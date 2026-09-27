#!/bin/sh
set -eu
: "${YIDROP_APPLE_SIGN_ID:?Set your own Apple signing/notarization credentials}"
: "${YIDROP_APPLE_TEAM_ID:?Set your own Apple signing/notarization credentials}"
: "${YIDROP_APPLE_ID:?Set your own Apple signing/notarization credentials}"
: "${YIDROP_APPLE_APP_PASSWORD:?Set your own Apple signing/notarization credentials}"

VERSION=$(sed -n 's/^version: \([0-9]*\.[0-9]*\.[0-9]*\).*/\1/p' app/pubspec.yaml)
ARM_NAME="YiDrop-CLI-$VERSION-macos-arm-64"
X64_NAME="YiDrop-CLI-$VERSION-macos-x86-64"

rustup target add aarch64-apple-darwin x86_64-apple-darwin

echo
echo "Compiling the CLI..."
echo
cargo build --release --package yidrop-cli --target aarch64-apple-darwin
cargo build --release --package yidrop-cli --target x86_64-apple-darwin

# stage per-arch directories so the archived binary keeps its plain name
rm -rf "$ARM_NAME" "$X64_NAME" "$ARM_NAME.zip" "$X64_NAME.zip" "$ARM_NAME.tar.gz" "$X64_NAME.tar.gz"
mkdir "$ARM_NAME" "$X64_NAME"
cp target/aarch64-apple-darwin/release/yidrop-cli "$ARM_NAME/yidrop-cli"
cp target/x86_64-apple-darwin/release/yidrop-cli "$X64_NAME/yidrop-cli"

# sign the binaries
echo
echo "Signing the CLI..."
echo
SIGN_ID="$YIDROP_APPLE_SIGN_ID"
codesign --force --verbose --options runtime --sign "$SIGN_ID" "$ARM_NAME/yidrop-cli"
codesign --force --verbose --options runtime --sign "$SIGN_ID" "$X64_NAME/yidrop-cli"

# send to apple for notarization (the zip is only the submission transport)
DEV_EMAIL="$YIDROP_APPLE_ID"
APP_PASSWORD="$YIDROP_APPLE_APP_PASSWORD"
TEAM_ID="$YIDROP_APPLE_TEAM_ID"

echo
echo "Sending to apple for notarization..."
echo
zip -j "$ARM_NAME.zip" "$ARM_NAME/yidrop-cli"
zip -j "$X64_NAME.zip" "$X64_NAME/yidrop-cli"
xcrun notarytool submit "$ARM_NAME.zip" --wait --apple-id $DEV_EMAIL --password "$APP_PASSWORD" --team-id "$TEAM_ID"
xcrun notarytool submit "$X64_NAME.zip" --wait --apple-id $DEV_EMAIL --password "$APP_PASSWORD" --team-id "$TEAM_ID"

# bare binaries cannot be stapled; Gatekeeper fetches the ticket online
rm -f "$ARM_NAME.zip" "$X64_NAME.zip"

# distribution tarballs; tar preserves the executable bit
echo
echo "Creating tar.gz archives..."
echo
tar -czvf "$ARM_NAME.tar.gz" -C "$ARM_NAME" yidrop-cli
tar -czvf "$X64_NAME.tar.gz" -C "$X64_NAME" yidrop-cli
rm -rf "$ARM_NAME" "$X64_NAME"
