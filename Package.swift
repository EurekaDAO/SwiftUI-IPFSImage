// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "ipfs-image",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "IPFSImage",
            targets: ["IPFSImage"])
    ],
    targets: [
        .target(name: "IPFSImage")
    ]
)

#if swift(>=5.6)
// Add the documentation compiler plugin if possible
package.dependencies.append(
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
)
#endif
