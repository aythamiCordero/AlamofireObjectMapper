// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        .iOS("10.0"),
        .tvOS("10.0"),
        .watchOS("3.0"),
        .macOS("10.12")
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire", .branch("master")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", from: "3.5.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "AlamofireObjectMapper",
            dependencies: ["Alamofire", "ObjectMapper"]),
        .testTarget(
            name: "AlamofireObjectMapperTests",
            dependencies: ["AlamofireObjectMapper"]),
    ]
)
