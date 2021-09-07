//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Renderer

extension Renderer2D {
	
	//MARK: Computed Properties
	
	public static var textSize: Int {
		get { currentTextSize }
		set { currentTextSize = newValue }
	}
	
	public static var textColor: Color {
		get { currentTextColor }
		set { currentTextColor = newValue }
	}
	
	//MARK: Text
	
	@inlinable
	public static func fps(at x: Int, _ y: Int) {
		DrawFPS(x.toInt32, y.toInt32)
	}
	
	@inlinable
	public static func text(_ value: String, at x: Int, _ y: Int, size: Int = Renderer2D.textSize, color: Color = Renderer2D.textColor) {
		DrawText(value, x.toInt32, y.toInt32, size.toInt32, color)
	}
	
}

//MARK: Stores

private var currentTextSize: Int = 20
private var currentTextColor = Color.black
