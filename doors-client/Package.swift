// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DoorsClient",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.4.3")),
        .package(name: "DoorsCLISDK", url: "../../../doors-cli-sdk", .branch("master"))
    ],
    targets: [
        .target(
            name: "DoorsClient",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "DoorsCLISDK"
            ]),
        .testTarget(
            name: "DoorsClientTests",
            dependencies: ["DoorsClient"]),
    ]
)
