// swift-tools-version:5.3
import PackageDescription

let version = "2.0.0"
let checksum = "ced6b1d5691f948df49206eba9abe75fcabbef3dcfae685e8352c8df5d60ea22"
let binChecksum = "7899e6d3baa52a8061c865cffd136afac2f73a00aa5155ce861307ce630ee617"
let url = "https://github.com/sparkle-project/Sparkle/releases/download/\(version)/Sparkle-SPM-\(version).zip"

let package = Package(
    name: "Sparkle",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(
            name: "Sparkle",
            targets: ["Sparkle"])
    ],
    targets: [
        //        .binaryTarget(
        //            name: "Sparkle",
        //            url: url,
        //            checksum: checksum
        //        )
        .binaryTarget(
            name: "Sparkle",
            path: "./Sparkle.xcframework"
        )
    ]
)
