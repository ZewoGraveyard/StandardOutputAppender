import PackageDescription

let package = Package(
    name: "CrateIO",
    dependencies: [
        .Package(url: "https://github.com/scottbyrns/Log.git", majorVersion: 0, minor: 4)
    ]
)
