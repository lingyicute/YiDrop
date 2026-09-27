#!/usr/bin/env python3
"""Publish only this branch's rolling prerelease after all APKs built successfully.
Requires gh + GITHUB_TOKEN, not a Flutter SDK. Unit tests never contact GitHub.
"""
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path
from urllib.parse import quote

ABIS = ('armeabi-v7a', 'arm64-v8a', 'x86_64')


def nightly_tag(branch, default_branch):
    if branch == default_branch:
        return 'nightly'
    slug = re.sub(r'[^a-z0-9-]+', '-', branch.lower()).strip('-')[:48] or 'branch'
    # Branches that slugify identically (or only differ in case) must not collide.
    suffix = hashlib.sha256(branch.encode()).hexdigest()[:10]
    return f'nightly-{slug}-{suffix}'


def gh(*args):
    # Never splice branch names, refs, or notes into a shell program.
    return subprocess.run(['gh', *args], capture_output=True, text=True, check=True).stdout


def api(path, allow_404=False):
    try:
        return json.loads(gh('api', path))
    except subprocess.CalledProcessError as exc:
        # Do not mistake auth failures, rate limits or outages for "not found".
        if allow_404 and '(HTTP 404)' in exc.stderr:
            return None
        raise


def prepare_assets(source, destination):
    # Validate the full set BEFORE touching an existing release or tag.
    originals = [source / f'app-{abi}-release.apk' for abi in ABIS]
    for path in originals:
        if not path.is_file() or path.stat().st_size == 0:
            raise RuntimeError(f'Missing or empty APK: {path}')
    destination.mkdir(parents=True, exist_ok=True)
    assets = []
    sums = []
    for abi, path in zip(ABIS, originals):
        target = destination / f'YiDrop-nightly-{abi}.apk'
        shutil.copyfile(path, target)
        digest = hashlib.sha256()
        with target.open('rb') as stream:
            for chunk in iter(lambda: stream.read(1024 * 1024), b''):
                digest.update(chunk)
        sums.append(f'{digest.hexdigest()}  {target.name}\n')
        assets.append(target.resolve())
    checksum = destination / 'SHA256SUMS.txt'
    checksum.write_text(''.join(sums))
    return [*assets, checksum.resolve()]


def publish(source, env):
    repo = env['GITHUB_REPOSITORY']
    sha = env['GITHUB_SHA']
    branch = env['GITHUB_REF_NAME']
    if env.get('GITHUB_EVENT_NAME') != 'push' or env.get('GITHUB_REF_TYPE') != 'branch':
        raise RuntimeError('Nightly publishing is only allowed for branch pushes')
    if not re.fullmatch(r'[0-9a-f]{40}', sha):
        raise RuntimeError('Invalid source commit SHA')
    tag = nightly_tag(branch, env['YIDROP_DEFAULT_BRANCH'])
    # An older successful build must not overwrite a newer push's nightly.
    # If the branch was removed while building, there is nothing to publish.
    current = api(f'repos/{repo}/commits/{quote(branch, safe="")}', allow_404=True)
    if current is None or current['sha'] != sha:
        print(f'SKIP: {branch} no longer points at {sha}; APK artifacts remain on this workflow run.')
        return False

    assets = prepare_assets(source, source / 'publish')
    notes = source / 'nightly-notes.md'
    notes.write_text(
        f'自动构建 · 分支 `{branch}` · 提交 `{sha}`\n\n'
        f'源码：{env.get("GITHUB_SERVER_URL", "https://github.com")}/{repo}/commit/{sha}\n\n'
        f'工作流：{env.get("GITHUB_SERVER_URL", "https://github.com")}/{repo}/actions/runs/{env["GITHUB_RUN_ID"]}\n\n'
        '此预发布使用临时 debug 签名，仅供测试；不同运行的密钥可能不同，'
        '不能保证覆盖安装。它不是正式签名版本。\n\n'
        '滚动版本只保留该分支最新成功发布的文件；较早构建的 APK 可在 Actions artifacts 中查找。\n'
    )
    title = f'YiDrop Nightly · {branch}'
    existing = api(f'repos/{repo}/releases/tags/{tag}', allow_404=True)
    if existing is None:
        gh('release', 'create', tag, *(str(p) for p in assets), '--repo', repo,
           '--title', title, '--notes-file', str(notes), '--prerelease', '--latest=false', '--target', sha)
    else:
        # Unlike delete-then-create, a failed build never removes the old release.
        # Keep the release URL and replace our fixed asset names in place.
        gh('release', 'upload', tag, *(str(p) for p in assets), '--repo', repo, '--clobber')
        gh('api', '--method', 'PATCH', f'repos/{repo}/git/refs/tags/{tag}', '-f', f'sha={sha}', '-F', 'force=true')
        gh('release', 'edit', tag, '--repo', repo, '--title', title, '--notes-file', str(notes),
           '--prerelease', '--latest=false', '--target', sha)
    print(f'Published {tag} at {sha}')
    return True


if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise SystemExit('Usage: publish_nightly.py APK_ARTIFACT_DIRECTORY')
    publish(Path(sys.argv[1]), os.environ)
