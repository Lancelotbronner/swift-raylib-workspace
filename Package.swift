// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "Swift Raylib",
	products: [
		
		// Libraries
		
		.library(
			name: "SwiftRlgl",
			targets: ["Rlgl"]),
		
			.library(
				name: "SwiftRaylib",
				targets: ["Raylib"]),
		
	],
	targets: [
		
		// Raylib
		
		.systemLibrary(
			name: "CRaylib",
			path: "Sources/Raylib/Underlying",
			pkgConfig: "raylib",
			providers: [
				.brew(["raylib"]),
			]),
		
			.target(
				name: "Raylib",
				dependencies: ["CRaylib"],
				path: "Sources/Raylib/Bindings"),
		
		// Rlgl
		
			.systemLibrary(
				name: "CRlgl",
				path: "Sources/Rlgl/Underlying",
				pkgConfig: "raylib",
				providers: [
					.brew(["raylib"]),
				]),
		
			.target(
				name: "Rlgl",
				dependencies: ["CRlgl"],
				path: "Sources/Rlgl/Bindings"),
		
		// Examples
		
			.example(.core, "Basic Window"),
		.example(.core, "Input Keys"),
		.example(.core, "Input Mouse"),
		.example(.core, "Input Mouse Wheel"),
		.example(.core, "2D Camera"),
		.example(.core, "2D Camera Platformer"),
		
			.example(.shapes, "Basic Shapes"),
		
			.example(.textures, "Logo Raylib", [
				.copy("raylib_logo.png")
			]),
		
		// Tests
		
			.testTarget(
				name: "RaylibTests",
				dependencies: ["Raylib"]),
	]
)

//MARK: - Templates

extension Target {
	private static var count = 1
	static func example(_ module: RaylibModule, _ name: String, _ resources: [Resource]? = nil) -> Target {
		let target = Target.executableTarget(
			name: "Example - \(String(repeating: "0", count: 3 - count.description.count))\(count) \(module.rawValue) \(name)",
			dependencies: ["Raylib"],
			path: "Examples/\(module.rawValue)/\(name)",
			resources: resources)
		count += 1
		return target
	}
}

//MARK: - Utilites

enum RaylibModule: String {
	case core = "Core"
	case shapes = "Shapes"
	case textures = "Textures"
}
