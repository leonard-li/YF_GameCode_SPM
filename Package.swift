// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_GameCode",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_GameCode",
            targets: ["YF_GameCode_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_GameCode_Target",
            dependencies: [
                "YF_GameCode_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_GameCode_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/gamecode/2.2.5/YFGameCode.xcframework.zip",
            checksum: "2e1918b8545dba4ab6a3cd9aab3faaacdec360da98e97b908c0a35f009d22bc8"
        )
    ]
)