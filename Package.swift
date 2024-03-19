// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CLImageEditor",
    platforms: [
        .iOS(.v12) // Adjusted to a minimum version that is more common for current SPM usage
    ],
    products: [
        // Defines the library product that includes all the targets (subspecs in Podspec terms)
        .library(
            name: "CLImageEditor",
            targets: [
                "CLImageEditor"
                     ]
        )
    ],
    targets: [
        .target(
            name: "CLImageEditor",
            path: "CLImageEditor",
//            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("CLImageEditor")
            ]
        )
    ]
)
