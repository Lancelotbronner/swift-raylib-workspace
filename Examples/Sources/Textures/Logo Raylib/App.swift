//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import Raylib

@main
struct LogoRaylib: App {
	let logo: Texture
	
	init() {
		Window.create(800, by: 450, title: "Example - Textures - Logo Raylib")
		Application.target(fps: 60)
		
		logo = Texture("raylib_logo.png", from: .module)
	}
	
	func draw() {
		Renderer2D.texture(logo, at: Window.size / 2 - logo.size / 2)
		Renderer2D.text("this IS a texture!", at: 360, 370, size: 10, color: .gray)
	}
}
