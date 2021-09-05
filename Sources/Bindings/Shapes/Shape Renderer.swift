//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

private var currentShapeColor = Color.gray

//MARK: - Shape Renderer

extension Renderer {
	
	//MARK: Constants
	
	public static var shapeColor: Color {
		get { currentShapeColor }
		set { currentShapeColor = newValue }
	}
	
	//MARK: Line
	
	public static func line(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, color: Color = Renderer.shapeColor) {
		DrawLine(startX.toInt32, startY.toInt32, endX.toInt32, endY.toInt32, color)
	}
	
	public static func line(from start: Vector2f, to end: Vector2f, color: Color = Renderer.shapeColor) {
		DrawLineV(start, end, color)
	}
	
	//MARK: Rectangle
	
	@inlinable
	public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.shapeColor) {
		DrawRectangle(x.toInt32, y.toInt32, width.toInt32, height.toInt32, color)
	}
	
	@inlinable
	public static func rectangle(_ rect: Rectangle, color: Color = Renderer.shapeColor) {
		DrawRectangle(rect.x.toInt32, rect.y.toInt32, rect.width.toInt32, rect.height.toInt32, color)
	}
	
	//MARK: Circle
	
	@inlinable
	public static func circle(at x: Int, _ y: Int, radius: Float, color: Color = Renderer.shapeColor) {
		DrawCircle(x.toInt32, y.toInt32, radius, color)
	}
	
	@inlinable
	public static func circle(at position: Vector2f, radius: Float, color: Color = Renderer.shapeColor) {
		DrawCircleV(position, radius, color)
	}
	
}
