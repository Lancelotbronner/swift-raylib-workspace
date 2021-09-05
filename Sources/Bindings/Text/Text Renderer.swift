//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

private var currentTextSize: Int = 20
private var currentTextColor = Color.black

//MARK: - Renderer

extension Renderer {
	
	//MARK: Constants
	
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
	public static func text(_ value: String, at x: Int, _ y: Int, size: Int = Renderer.textSize, color: Color = Renderer.textColor) {
		DrawText(value, x.toInt32, y.toInt32, size.toInt32, color)
	}
	
}
