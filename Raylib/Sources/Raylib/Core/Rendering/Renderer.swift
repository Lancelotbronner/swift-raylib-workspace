//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Renderer

public struct Renderer {
	
	//MARK: Properties
	
	public static var background = Color.raywhite
	
	public static var pointSize = 20
	
	public static var thickness = 1
	
	public static var color = Color.gray
	
	public static var textColor = Color.black
	
	public static var tint = Color.white
	
	public static var textAlignment = TextAlignment.left
	
	//MARK: Commands
	
	/// Setup canvas (framebuffer) to start drawing; End canvas drawing and swap buffers (double buffering)
	@inlinable public static func render(draw: (Renderer2D) -> Void) {
		BeginDrawing()
		draw(Renderer2D())
		EndDrawing()
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func render(at x: Int, _ y: Int, size width: Int, by height: Int, draw: (Renderer2D) -> Void) {
		BeginScissorMode(x.toInt32, y.toInt32, width.toInt32, height.toInt32)
		draw(Renderer2D())
		EndScissorMode()
	}
	
}
