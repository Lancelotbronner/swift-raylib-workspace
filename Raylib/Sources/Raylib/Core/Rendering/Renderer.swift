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
	
	/// Window background color when using ``Applet`` or ``App``
	public static var background = Color.raywhite
	
	/// Default line thickness
	public static var thickness: Float = 1
	
	/// Default color
	public static var color = Color.gray
	
	/// Default image and texture tint
	public static var tint = Color.white
	
	/// Default text size
	public static var pointSize = 20
	
	/// Default text color
	public static var textColor = Color.black
	
	/// Default text alignment
	public static var textAlignment = TextAlignment.left
	
	//MARK: Rendering Modes
	
	/// Setup canvas (framebuffer) to start drawing; End canvas drawing and swap buffers (double buffering)
	@inlinable public static func render(draw: () -> Void) {
		BeginDrawing()
		draw()
		EndDrawing()
	}
	
	/// Begin 2D mode; End 2D mode
	@inlinable public func camera(_ camera: Camera2D, draw: () -> Void) {
		BeginMode2D(camera.underlying)
		draw()
		EndMode2D()
	}
	
	// Begin 3D mode; End 3D mode
	@inlinable public func camera(_ camera: Camera3D, draw: () -> Void) {
		BeginMode3D(camera.underlying)
		draw()
		EndMode3D()
	}
	
	@inlinable public func offscreen(_ texture: RenderTexture, draw block: () -> Void) {
		BeginTextureMode(texture.underlying)
		block()
		EndTextureMode()
	}
	
	//MARK: Rendering Commands
	
	/// Begin blending mode; End blending mode (reset to default: alpha blending)
	@inlinable public func blend(_ mode: BlendMode, draw: () -> Void) {
		BeginBlendMode(mode.rawValue.toInt32)
		draw()
		EndBlendMode()
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func scissor(at x: Int, _ y: Int, size width: Int, by height: Int, draw: () -> Void) {
		BeginScissorMode(x.toInt32, y.toInt32 - height.toInt32, width.toInt32, height.toInt32)
		draw()
		EndScissorMode()
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func scissor(at position: Vector2f, size: Vector2f, draw: () -> Void) {
		scissor(at: position.x.toInt, position.y.toInt, size: size.x.toInt, by: size.y.toInt, draw: draw)
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func scissor(in area: Rectangle, draw: () -> Void) {
		scissor(at: area.position, size: area.size, draw: draw)
	}
	
	//MARK: Drawing Methods
	
	/// Set background color (framebuffer clear color)
	@inlinable public static func clear(to color: Color) {
		ClearBackground(color.toRaylib)
	}
	
}
