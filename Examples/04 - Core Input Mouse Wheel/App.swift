//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import Raylib

@main
struct Example04: App {
	
	var boxPositionY: Float
	
	init() {
		Window.create(800, by: 450, title: "Example 03 - Core Input Mouse")
		Application.targetFPS = 60
		
		boxPositionY = Float(Window.size.y / 2 - 40)
	}
	
	mutating func update() {
		boxPositionY -= Mouse.wheel * 4
	}
	
	func draw() {
		Renderer.rectangle(at: Window.width / 2 - 40, boxPositionY.toInt, size: 80, by: 80, color: .maroon)
		
		Renderer.text("Use mouse wheel to move the cube up and down!", at: 10, 10, color: .gray)
		Renderer.text("Box position Y: \(boxPositionY, decimals: 0, digits: 3)", at: 10, 40, color: .lightGray);
	}
	
}
