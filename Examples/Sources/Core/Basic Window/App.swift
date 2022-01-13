//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import Raylib

@main struct BasicWindow: Applet {
	
	init() {
		Window.create(800, by: 450, title: "Example - Core - Basic Window")
		Application.target(fps: 60)
	}
	
	func draw(using renderer: Renderer2D) {
		renderer.text(center: "Congrats! You created your first window!", color: Color.lightGray)
	}

}
