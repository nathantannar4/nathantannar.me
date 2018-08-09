// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "nathantannar.me",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.1"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Leaf", "Vapor", "FluentMySQL"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

