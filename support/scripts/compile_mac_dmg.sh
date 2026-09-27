#!/bin/sh
set -eu
: "${YIDROP_APPLE_SIGN_ID:?Set your own Apple signing/notarization credentials}"
: "${YIDROP_APPLE_TEAM_ID:?Set your own Apple signing/notarization credentials}"
: "${YIDROP_APPLE_ID:?Set your own Apple signing/notarization credentials}"
: "${YIDROP_APPLE_APP_PASSWORD:?Set your own Apple signing/notarization credentials}"

# Prerequisite:
# - brew install create-dmg

VERSION=$(sed -n 's/^version: \([0-9]*\.[0-9]*\.[0-9]*\).*/\1/p' app/pubspec.yaml)
DMG="YiDrop-$VERSION.dmg"

cd app
fvm flutter clean
fvm flutter pub get
fvm flutter build macos

# sign the app
echo
echo "Signing the app..."
echo
SIGN_ID="$YIDROP_APPLE_SIGN_ID"
codesign --deep --force --verbose --options runtime --preserve-metadata=entitlements --sign "$SIGN_ID" build/macos/Build/Products/Release/YiDrop.app

# create dmg
# brew install create-dmg
echo
echo "Creating dmg..."
echo
rm -f "$DMG"
create-dmg \
  --volname "YiDrop" \
  --window-size 500 300 \
  --background "../support/build/dmg/background.png" \
  --icon YiDrop.app 130 110 \
  --app-drop-link 360 110 \
  "$DMG" \
  build/macos/Build/Products/Release/YiDrop.app

# sign the dmg
echo
echo "Signing the dmg..."
echo
codesign --force --verbose --sign "$SIGN_ID" "$DMG"

# send to apple for notarization
DEV_EMAIL="$YIDROP_APPLE_ID"
APP_PASSWORD="$YIDROP_APPLE_APP_PASSWORD"
TEAM_ID="$YIDROP_APPLE_TEAM_ID"

echo
echo "Sending to apple for notarization..."
echo
xcrun notarytool submit "$DMG" --wait --apple-id $DEV_EMAIL --password "$APP_PASSWORD" --team-id "$TEAM_ID"

# download notarization result and apply to the dmg
echo
echo "Run stapler..."
echo
xcrun stapler staple "$DMG"
cd ..
