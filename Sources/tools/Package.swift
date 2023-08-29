// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "DevTools",
	platforms: [
		.macOS(.v12)
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMajor(from: "1.0.0")),
	],
	targets: [
		.executableTarget(
			name: "RaylibDevelopmentToolkit",
			dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser")
			],
			path: "Sources",
			resources: [
				.copy("Documentation/symbol-map.csv"),
				.copy("Documentation/cleanup-map.csv"),
				.copy("Documentation/raylib.h"),
			])
	]
)
