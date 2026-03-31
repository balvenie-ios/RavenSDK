// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.1.1"
let checksum = "75baf3253ee1020a3b2967a86ead4d7dc70cf35fb5c383a425def6f7fb0e608e"

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
