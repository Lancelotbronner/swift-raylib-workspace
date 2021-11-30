//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import Raylib

@main
struct BasicShapes: App {
	init() {
		Window.create(800, by: 450, title: "Example - Shapes - Basic Shapes")
		Application.target(fps: 60)
	}
	
	func draw() {
		Renderer2D.text("some basic shapes available on raylib", at: 20, 20, color: .darkGray)
		
		// Circle shapes and lines
		let circleX = Window.width / 5
		Renderer2D.circle(at: circleX, 120, radius: 35, color: .darkBlue)
		Renderer2D.circle(at: circleX, 220, radius: 60, gradient: .green, .skyBlue)
		Renderer2D.circleOutline(at: circleX, 340, radius: 80, color: .darkBlue)
		
		// Rectangle shapes and lines
		let rectangleX = Window.width / 4 * 2
		Renderer2D.rectangle(at: rectangleX - 60, 100, size: 120, 60, color: .red)
		Renderer2D.rectangle(at: rectangleX - 90, 170, size: 180, 130, gradientH: .maroon, .gold)
		Renderer2D.rectangleOutline(at: rectangleX - 40, 320, size: 80, 60, color: .orange)
		
		// Triangle shapes and lines
		let triangleX = Window.width.toFloat / 4 * 3
		Renderer2D.triangle(Vector2f(triangleX, 80), Vector2f(triangleX - 60, 150), Vector2f(triangleX + 60, 150), color: .violet)
		Renderer2D.triangleOutline(Vector2f(triangleX, 160), Vector2f(triangleX - 20, 230), Vector2f(triangleX + 20, 230), color: .darkBlue)
		
		// Polygon shapes and lines
		let polygonX = Window.width / 4 * 3
		Renderer2D.polygon(at: polygonX, 320, sides: 6, radius: 80, color: .brown)
		Renderer2D.polygonOutline(at: polygonX, 320, sides: 6, radius: 80)
		
		Renderer2D.line(from: 18, 42, to: Window.width - 18, 42, color: .black)
	}
}
