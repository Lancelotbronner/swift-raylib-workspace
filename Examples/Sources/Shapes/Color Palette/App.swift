//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import Raylib

@main
struct ColorPalette: App {
	var palette = [
		PaletteItem("Dark Gray", .darkGray),
		PaletteItem("Maroon", .maroon),
		PaletteItem("Orange", .orange),
		PaletteItem("Dark Green", .darkGreen),
		PaletteItem("Dark Blue", .darkBlue),
		PaletteItem("Dark Purple", .darkPurple),
		PaletteItem("Dark Brown", .darkBrown),
		PaletteItem("Gray", .gray),
		PaletteItem("Red", .red),
		PaletteItem("Gold", .gold),
		PaletteItem("Lime", .lime),
		PaletteItem("Blue", .blue),
		PaletteItem("Violet", .violet),
		PaletteItem("Brown", .brown),
		PaletteItem("Light Gray", .lightGray),
		PaletteItem("Pink", .pink),
		PaletteItem("Yellow", .yellow),
		PaletteItem("Green", .green),
		PaletteItem("Sky Blue", .skyBlue),
		PaletteItem("Purple", .purple),
		PaletteItem("Beige", .beige),
	]
	
	init() {
		Window.create(800, by: 450, title: "Example - Shapes - Color Palette")
		Application.targetFPS = 60
	}
	
	mutating func update() {
		let mouse = Mouse.position
		for i in palette.indices {
			palette[i].hovered = palette[i].area.contains(mouse)
		}
	}
	
	func draw() {
		Renderer2D.text("raylib color palette", at: 28, 42)
		Renderer2D.text("press SPACE to see all colors", at: Window.width - 180, Window.height - 40, size: 10, color: .gray)
		
		for item in palette {
			let rect = item.area
			Renderer2D.rectangle(rect, color: item.color.faded(to: item.hovered ? 0.6 : 1))
			
			guard Keyboard.space.isDown || item.hovered else { continue }
			Renderer2D.rectangle(at: rect.x.toInt, rect.y.toInt + rect.height.toInt - 26, size: rect.width.toInt, 20, color: .black)
			Renderer2D.rectangleOutline(rect, thickness: 6, color: .black.faded(to: 0.3))
			Renderer2D.text(item.name, at: rect.x.toInt + rect.width.toInt - item.measure(size: 10) - 12, rect.y.toInt + rect.height.toInt - 20, size: 10, color: item.color)
		}
	}
}

struct PaletteItem {
	static let size = Vector2f(100, 100)
	private static var index = 0
	
	let name: String
	let color: Color
	let position: Vector2f
	var hovered = false
	
	var area: Rectangle { Rectangle(at: position, size: Self.size) }
	
	init(_ name: String, _ color: Color) {
		self.name = name
		self.color = color
		let x = 20 + PaletteItem.size.x * (PaletteItem.index % 7).toFloat + 10 * (PaletteItem.index % 7).toFloat
		let y = 80 + PaletteItem.size.y * (PaletteItem.index / 7).toFloat + 10 * (PaletteItem.index / 7).toFloat
		position = Vector2f(x, y)
		Self.index += 1
	}
	
	func measure(size: Int) -> Int {
		Text.measure(name, size: size)
	}
	
}
