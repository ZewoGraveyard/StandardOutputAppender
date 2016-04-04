import PackageDescription

let package = Package(
    name: "STDOutAppender",
    dependencies: [
        .Package(url: "https://github.com/Zewo/Log.git", majorVersion: 0, minor: 4)
    ]
)
