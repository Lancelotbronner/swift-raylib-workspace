//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import CRaylib

//MARK: - Texture Renderer

extension Renderer2D {
	
	//MARK: Computed Properties
	
	/// The tint color applied to textures
	///
	/// Use `white` if you don't want to tint the texture
	public static var tint: Color {
		get { currentTintColor }
		set { currentTintColor = newValue }
	}
	
	//MARK: Texture
	
	public static func texture(_ value: Texture, at x: Int, _ y: Int, tint: Color = Renderer2D.tint) {
		DrawTexture(value.toRaylib, x.toInt32, y.toInt32, tint.toRaylib)
	}
	
	public static func texture(_ value: Texture, at position: Vector2f, tint: Color = Renderer2D.tint) {
		DrawTextureV(value.toRaylib, position.toRaylib, tint.toRaylib)
	}
	
	public static func texture(_ value: Texture, from source: Rectangle? = nil, at position: Vector2f, to destination: Rectangle, rotation: Angle<Float> = .zero, tint: Color = Renderer2D.tint) {
		DrawTexturePro(value.toRaylib, source?.toRaylib ?? .init(x: 0, y: 0, width: value.size.x, height: value.size.y), destination.toRaylib, position.toRaylib, rotation.toDegrees, tint.toRaylib)
	}
	
	//MARK: Render Texture
	
	public static func target(_ value: RenderTexture, at position: Vector2f, to destination: Rectangle, rotation: Angle<Float> = .zero, tint: Color = Renderer2D.tint) {
		texture(value.texture, from: Rectangle(at: 0, 0, size: value.texture.width.toFloat, -value.texture.height.toFloat), at: position, to: destination, rotation: rotation, tint: tint)
	}
	
}

//MARK: Stores

private var currentTintColor = Color.white
