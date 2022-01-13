//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Renderer

public struct Renderer {
	
	//MARK: Background
	
	/// The window's background color
	public static var background = Color.raywhite
	
	/// Set background color (framebuffer clear color)
	@inlinable public static func clear(to color: Color) {
		ClearBackground(color.toRaylib)
	}
	
	//MARK: Commands
	
	/// Setup canvas (framebuffer) to start drawing; End canvas drawing and swap buffers (double buffering)
	@inlinable public static func render(draw: () -> Void) {
		BeginDrawing()
		draw()
		EndDrawing()
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func render(at x: Int, _ y: Int, size width: Int, by height: Int, draw: () -> Void) {
		BeginScissorMode(x.toInt32, y.toInt32, width.toInt32, height.toInt32)
		draw()
		EndScissorMode()
	}
	
}

//MARK: - Renderers

public struct Renderer2D { }
public struct WireRenderer2D { }
public struct Renderer3D { }
public struct WireRenderer3D { }
