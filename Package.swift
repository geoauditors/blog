// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GeoAuditorsBlog",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(path: "../")
    ],
    targets: [
        .executableTarget(
            name: "GeoAuditorsBlog",
            dependencies: ["Ignite"]),
    ]
)
