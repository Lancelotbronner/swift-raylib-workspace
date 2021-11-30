//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import Raylib

@main
struct InputMouse: App {
	var ballPosition = Vector2f(-100)
	var ballColor = Color.darkBlue
	
	init() {
		Window.create(800, by: 450, title: "Example - Core - Input Mouse")
		Application.target(fps: 60)
	}
	
	mutating func update() {
		ballPosition = Mouse.position
		
		switch true {
		case Mouse.left.isPressed: ballColor = .maroon
		case Mouse.middle.isPressed: ballColor = .lime
		case Mouse.right.isPressed: ballColor = .darkBlue
		case Mouse.side.isPressed: ballColor = .purple
		case Mouse.extra.isPressed: ballColor = .yellow
		case Mouse.forward.isPressed: ballColor = .orange
		case Mouse.backward.isPressed: ballColor = .beige
		default: break
		}
	}
	
	func draw() {
		Renderer2D.text("Move ball with mouse and use mouse buttons to change color", at: 10, 10, color: .darkGray)
		Renderer2D.circle(at: ballPosition, radius: 40, color: ballColor)
	}
}