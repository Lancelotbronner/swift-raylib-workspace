//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import Raylib

@main
struct Example01: App {
	
	init() {
		Window.create(800, by: 450, title: "Example 01 - Core Basic Window")
		Application.targetFPS = 60
	}
	
	func draw() {
		Renderer.text("Congrats! You created your first window!", at: 190, 200, color: .lightGray)
	}

}
