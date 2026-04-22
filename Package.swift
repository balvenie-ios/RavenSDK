// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.2.0"
let checksum = "b9ad4cf36abec63293aa2a550c5b3d906bffb6bac7748d5c71552d244548ee64"

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
