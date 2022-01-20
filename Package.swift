// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AMapSearchKitNoIDFA",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "AMapSearchKit",
      targets: ["AMapSearchKit"]
    ),
  ],
  dependencies: [
    .package(
      name: "AMapFoundationKitNoIDFA",
      url: "https://github.com/akolov/AMapFoundationKitNoIDFA.git",
      .upToNextMajor(from: "1.6.0")
    )
  ],
  targets: [
    .target(
      name: "AMapSearchKit",
      dependencies: [
        .product(name: "AMapFoundationKit", package: "AMapFoundationKitNoIDFA")
      ],
      path: "Sources/AMapSearchKit"
    ),
    .binaryTarget(name: "AMapSearchKitSource", path: "Vendor/AMapSearchKit.xcframework")
  ]
)
