// swift-tools-version:5.3
import PackageDescription

let version = "1.24.0"
let checksum = "fa0deb67f6d47c8020bd795fa98d6b495eecc7c7959539e5dc49505fd5f4bc5f"
//let url = "https://github.com/sparkle-project/Sparkle/releases/download/\(version)/Sparkle-SPM-\(version).zip"
let url = "https://github.com/thebluepotato/SparkleTest/raw/master/Sparkle-\(version)-test.zip"

let package = Package(
    name: "Sparkle",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(
            name: "Sparkle",
            targets: ["Sparkle"])
    ],
    targets: [
        .binaryTarget(
            name: "Sparkle",
            url: url,
            checksum: checksum
        )
    ]
)
