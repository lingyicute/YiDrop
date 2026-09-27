# 参与 YiDrop

YiDrop 是 LocalSend 的下游分支。上游贡献指南见：
<https://github.com/localsend/localsend/blob/main/CONTRIBUTING.md>

- 请勿把本分支的中文文案、协议路径或默认端口当成上游行为。
- UI 文案的唯一来源是 `app/assets/i18n/zh-CN.json`；在 `app` 目录运行 `dart run slang` 即可更新生成文件。
- 目前我们沿用上游的公共信令服务器和 STUN 地址。这些特性目前并未启用。

## Security issues

请勿在公开 issue 中附带用户文件、凭据或未修复漏洞的可利用细节。对于 LocalSend 上游问题，可参照上游仓库的安全报告流程。
