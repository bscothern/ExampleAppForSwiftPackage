// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExamplePackage",
    products: [
        .library(
            name: "ExamplePackage",
            targets: ["ExamplePackage"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ExamplePackage",
            dependencies: []
        ),
        .testTarget(
            name: "ExamplePackageTests",
            dependencies: ["ExamplePackage"]
        ),
    ]
)
