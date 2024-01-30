// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KochavaEnhancement",
    platforms: 
    [
        .iOS(.v13),
        .macCatalyst(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .visionOS(.v1),
        .watchOS(.v6)
    ],
    products:
    [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KochavaEnhancement",
            targets:
            [
                "KochavaEnhancement"
            ]
        ),
    ],
    dependencies:
    [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "KochavaNetworking",
            path: "../Apple-SwiftPackage-KochavaNetworking-XCFramework"
        ),
//        .package(
//            name: "KochavaNetworking",
//            url: "https://github.com/Kochava/Apple-SwiftPackage-KochavaNetworking-XCFramework",
//            from: "8.0.0"
//        ),
    ],
    targets:
    [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "KochavaEnhancement",
            path: "KochavaEnhancement.xcframework"
        ),
        .testTarget(
            name: "KochavaEnhancementTests",
            dependencies:
            [
                "KochavaNetworking",
                "KochavaEnhancement"
            ]
        ),
    ]
)
