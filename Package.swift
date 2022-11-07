// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "NaverThirdPartyLogin",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "NaverThirdPartyLogin",
            targets: [
                "NaverThirdPartyLogin",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            url: "https://github.com/topkim993/naveridlogin-sdk-ios-spm/releases/download/4.1.5/NaverThirdPartyLogin.xcframework.zip",
            checksum: "1a971c636eab1c771511493a0f6e2ddcb08983e9dca288428f56cd0c1b7750e2"
        ),
    ]
)
