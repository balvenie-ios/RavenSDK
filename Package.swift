// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.1.2"
let checksum = "273a28f4d85c0d6016fe92da7f754454bab2307e0432f046844a7413ba54435b"

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
