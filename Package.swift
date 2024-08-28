// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CLImageEditor",
    defaultLocalization: "en",
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
            resources: [
                .copy("Resources/CLAdjustmentTool"),
                .copy("Resources/CLBlurTool"),
                .copy("Resources/CLClippingTool"),
                .copy("Resources/CLDrawTool"),
                .copy("Resources/CLEffectTool"),
                .copy("Resources/CLEmoticonTool"),
                .copy("Resources/CLFilterTool"),
                .copy("Resources/CLResizeTool"),
                .copy("Resources/CLRotateTool"),
                .copy("Resources/CLSplashTool"),
                .copy("Resources/CLStickerTool"),
                .copy("Resources/CLTextTool"),
                .copy("Resources/CLToneCurveTool"),
                .copy("Resources/Resources")
            ],
            cSettings: [
                .headerSearchPath("CLImageEditor")
            ]
        )
    ]
)
