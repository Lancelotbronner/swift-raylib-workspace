// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "Swift Raylib Examples",
	platforms: [
		.macOS(.v12),
	],
	dependencies: [
		
		// Wrappers
		.package(path: "../Raylib")
		
	],
	targets: [
		
		// Core Module
		.example(.core, "Basic Window"),
		.example(.core, "Input Keys"),
		.example(.core, "Input Mouse"),
		.example(.core, "Input Mouse Wheel"),
		.example(.core, "2D Camera"),
		.example(.core, "2D Camera Platformer"),
		
		// Shapes Module
		.example(.shapes, "Basic Shapes"),
		.example(.shapes, "Color Palette"),
		
		// Textures Module
		.example(.textures, "Logo Raylib", [
			.copy("raylib_logo.png")
		]),
		.example(.textures, "Image Generation"),
	]
)

//MARK: - Templates

extension Target {
	private static var count = 1
	static func example(_ module: RaylibModule, _ name: String, _ resources: [Resource]? = nil) -> Target {
		let target = Target.executableTarget(
			name: "Example - \(String(repeating: "0", count: 3 - count.description.count))\(count) \(module.rawValue) \(name)",
			dependencies: [
				.product(name: "SwiftRaylib", package: "Raylib"),
			],
			path: "Sources/\(module.rawValue)/\(name)",
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
