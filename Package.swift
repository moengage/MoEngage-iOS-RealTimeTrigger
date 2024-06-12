// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.16.1"
let checksum = "015fef34161b6f6b0bc99c18ea65d4368d06aa9b39e3a6c41fe904f07263f04d"
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
