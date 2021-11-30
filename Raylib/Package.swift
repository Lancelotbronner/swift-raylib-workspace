// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "Swift Raylib",
	platforms: [
		.macOS(.v12),
	],
	products: [
		
		// Libraries
		.library(
			name: "SwiftRaylib",
			targets: ["Raylib"]),
		
	],
	targets: [
		
		// Targets
		
		.systemLibrary(
			name: "CRaylib",
			pkgConfig: "raylib",
			providers: [
				.brew(["raylib"]),
			]),
		
			.target(
				name: "Raylib",
				dependencies: ["CRaylib"],
				path: "Sources/Raylib"),
		
		// Tests
		
			.testTarget(
				name: "RaylibTests",
				dependencies: ["Raylib"]),
	]
)
