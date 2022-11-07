#!/bin/sh

set -e

VERSION="v4.1.5"

git clone --depth=1 --branch="${VERSION}" https://github.com/naver/naveridlogin-sdk-ios.git

mv naveridlogin-sdk-ios/NaverThirdPartyLogin.xcframework NaverThirdPartyLogin.xcframework

zip -r NaverThirdPartyLogin.xcframework.zip NaverThirdPartyLogin.xcframework

rm -rf NaverThirdPartyLogin.xcframework

rm -rf naveridlogin-sdk-ios

swift package compute-checksum NaverThirdPartyLogin.xcframework.zip
