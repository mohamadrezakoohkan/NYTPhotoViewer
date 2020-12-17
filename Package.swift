// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NYTPhotoViewer",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "NYTPhotoViewer", targets: ["NYTPhotoViewer"])
    ],
    dependencies: [
        .package(name: "PINRemoteImage",
                 url: "https://github.com/pinterest/PINRemoteImage.git", "3.0.0" ..< "4.0.0")
    ],
    targets: [
        .target(
            name: "NYTPhotoViewer",
            dependencies: [
                .product(name: "PINRemoteImage", package: "PINRemoteImage")
            ],
            path: "NYTPhotoViewer",
            exclude: [
                "NYTPhotoViewerCore.h",
                "NYTInterstitialViewController.h",
                "Info.plist"
            ],
            resources: [
                .process("NYTPhotoViewer.bundle")
            ],
            publicHeadersPath: "./",
            cSettings: [
                .headerSearchPath("./"),
                .headerSearchPath("./Protocols"),
                .headerSearchPath("./Resource Loading"),
            ],
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: .some([.iOS, .tvOS])))
            ]
        )
    ]
)

