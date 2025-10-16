// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: RustCargoSwift

import PackageDescription;

let package = Package(
    name: "RustCargoSwift",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "RustCargoSwift",
            targets: ["RustCargoSwift"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", path: "./RustFramework.xcframework"),
        .target(
            name: "RustCargoSwift",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)