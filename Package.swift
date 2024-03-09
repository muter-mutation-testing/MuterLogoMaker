// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MuterLogoMaker",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .executable(
            name: "MuterLogoMaker",
            targets: [
                "MuterLogoMaker",
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow", exact: "4.0.1"),
        .package(url: "https://github.com/apple/swift-argument-parser", exact: "1.3.0"),
    ],
    targets: [
        .executableTarget(
            name: "MuterLogoMaker",
            dependencies: [
                "Rainbow",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            resources: [
                .process("muter_logo.rtf"),
            ]
        ),
    ]
)
