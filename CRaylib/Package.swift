// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "Swift Raylib Bindings",
	platforms: [
		.macOS(.v11),
	],
	products: [
		
		// Libraries
		
		.library(
			name: "CRaylib",
			targets: ["CRaylib"]),
		
	],
	targets: [
		
		// Raylib
		
		.systemLibrary(
			name: "CRaylib",
			pkgConfig: "raylib",
			providers: [
				.brew(["raylib"]),
			]),
		
	]
)
