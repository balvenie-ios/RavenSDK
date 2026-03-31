// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.1.0"
let checksum = "201018da9deffc6a442bb18cdadfd4192fdc6d55a8399507ddd19f0862bcbc2e"

let package = Package(
    name: "RavenSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "RavenSDK", targets: ["RavenSDKXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "RavenSDKXCFramework",
            url: "https://github.com/balvenie-ios/RavenSDK/releases/download/\(version)/RavenSDK.xcframework.zip",
            checksum: checksum
        ),
    ]
)
