//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import Raylib

@main
struct BasicWindow: App {
	
	init() {
		Window.create(800, by: 450, title: "Example - Core - Basic Window")
		Application.targetFPS = 60
	}
	
	func draw() {
		Renderer2D.text("Congrats! You created your first window!", at: 190, 200, color: .lightGray)
	}

}
