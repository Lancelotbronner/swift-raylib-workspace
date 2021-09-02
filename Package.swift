// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Swift Raylib",
	products: [
		
		// Libraries
		
		.library(
			name: "SwiftRaylib",
			targets: ["Raylib"]),
		
	],
	targets: [
		
		// Raylib
		
		.systemLibrary(
			name: "CRaylib",
			path: "Sources/Raylib",
			pkgConfig: "raylib",
			providers: [
				.brew(["raylib"]),
			]),
		
		// Bindings
		
			.target(
				name: "Raylib",
				dependencies: ["CRaylib"],
				path: "Sources/Bindings"),
		
		// Tests
		
		//        .testTarget(
		//            name: "Swift RaylibTests",
		//            dependencies: ["Swift Raylib"]),
	]
)
