// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.2.0"
let checksum = "cf404db8c7811591a73eee314ee461872e71b12a995"

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
