// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.16.0"
let checksum = "8c5d62b30843cdd5167a91709b5a8e23ce2dce5ff2ec1874d5657601c1365b47"
let package = Package(
    name: "MoEngageRealTimeTrigger",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "MoEngageRealTimeTrigger",
            targets: ["MoEngageRealTimeTriggerSPM","MoEngageRealTimeTrigger"]),
    ],
    dependencies: [
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", "9.17.0"..<"9.18.0"),
        .package(name: "MoEngageRichNotification",url: "https://github.com/moengage/MoEngage-iOS-RichNotification.git", "7.16.0"..<"7.17.0"),
        
    ],
    targets: [
        .target(name: "MoEngageRealTimeTriggerSPM", dependencies: ["MoEngage-iOS-SDK","MoEngageRichNotification"], path: "Sources/..",exclude: ["MoEngageRealTimeTrigger.podspec", "README.md", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-RealTimeTrigger/releases/download/\(version)/MoEngageRealTimeTrigger.xcframework.zip", checksum: checksum)
    ],
    swiftLanguageVersions: [.v5]
)
