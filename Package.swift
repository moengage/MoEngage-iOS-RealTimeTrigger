// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngageRealTimeTrigger",
    products: [
        .library(
            name: "MoEngageRealTimeTrigger",
            targets: ["MoEngageRealTimeTriggerSPM","MoEngageRealTimeTrigger"]),
    ],
    dependencies: [
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", from: "8.6.0"),
        .package(name: "MoEngageRichNotification",url: "https://github.com/moengage/MoEngage-iOS-RichNotification.git", from: "6.6.0"),
        
    ],
    targets: [
        .target(name: "MoEngageRealTimeTriggerSPM", dependencies: ["MoEngage-iOS-SDK","MoEngageRichNotification"], path: "Sources/..",exclude: ["MoEngageRealTimeTrigger.podspec", "README.md","./Frameworks/MoEngageRealTimeTrigger.xcframework", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageRealTimeTrigger",path: "./Frameworks/MoEngageRealTimeTrigger.xcframework")
    ]
)
