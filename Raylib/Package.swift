// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "Swift Raylib",
	platforms: [
		.macOS(.v11),
	],
	products: [
		
		// Libraries
		.library(
			name: "SwiftRaylib",
			targets: ["Raylib"]),
		
	],
	dependencies: [
		
		// Bindings
		.package(path: "../CRaylib")
		
	],
	targets: [
		
		// Graphics Layer
		
		//		.systemLibrary(
		//			name: "CGraphics",
		//			path: "Sources/Graphics/Underlying",
		//			pkgConfig: "raylib",
		//			providers: [
		//				.brew(["raylib"]),
		//			]),
		//
		//			.target(
		//				name: "Graphics",
		//				dependencies: ["CGraphics"],
		//				path: "Sources/Graphics/Bindings",
		//				cSettings: [
		//					.define("GRAPHICS_API_OPENGL_33", .when(platforms: [.macOS, .linux, .macCatalyst, .windows])),
		//					.define("GRAPHICS_API_OPENGL_ES2", .when(platforms: [.iOS, .wasi, .android])),
		//					.define("RLGL_IMPLEMENTATION"),
		//					.define("SUPPORT_GL_DETAILS_INFO", .when(configuration: .debug))
		//				]),
		
		// Wrappers
		
			.target(
				name: "Raylib",
				dependencies: [
					.product(name: "CRaylib", package: "CRaylib"),
				],
				path: "Sources/Raylib"),
		
		// Tests
		
			.testTarget(
				name: "RaylibTests",
				dependencies: ["Raylib"]),
	]
)
