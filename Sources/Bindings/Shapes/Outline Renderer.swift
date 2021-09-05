//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import CRaylib

//MARK: - Outline Renderer

extension Renderer {
	
	//MARK: Rectangle
	
	@inlinable
	public static func rectangleOutline(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.shapeColor) {
		DrawRectangleLines(x.toInt32, y.toInt32, width.toInt32, height.toInt32, color)
	}
	
	@inlinable
	public static func rectangleOutline(_ rect: Rectangle, color: Color = Renderer.shapeColor) {
		DrawRectangleLines(rect.x.toInt32, rect.y.toInt32, rect.width.toInt32, rect.height.toInt32, color)
	}
	
	//MARK: Circle
	
	@inlinable
	public static func circleOutline(at x: Int, _ y: Int, radius: Float, color: Color = Renderer.shapeColor) {
		DrawCircleLines(x.toInt32, y.toInt32, radius, color)
	}
	
	@inlinable
	public static func circleOutline(at position: Vector2f, radius: Float, color: Color = Renderer.shapeColor) {
		DrawCircleLines(position.x.toInt32, position.y.toInt32, radius, color)
	}
	
}
