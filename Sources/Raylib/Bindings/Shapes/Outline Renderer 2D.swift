//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import CRaylib

//MARK: - Outline 2D Renderer

extension Renderer2D {
	
	//MARK: Triangle
	
	@inlinable
	public static func triangleOutline(_ p1: Vector2f, _ p2: Vector2f, _ p3: Vector2f, color: Color = Renderer.shapeColor) {
		DrawTriangleLines(p1, p2, p3, color)
	}
	
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
	
	//MARK: Sector
	
	@inlinable
	public static func sectorOutline(at x: Int, _ y: Int, radius: Float, from start: Angle, to end: Angle, segments: Int = 0, color: Color = Renderer.shapeColor) {
		DrawCircleSectorLines(Vector2f(x.toFloat, y.toFloat), radius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	@inlinable
	public static func sectorOutline(at position: Vector2f, radius: Float, from start: Angle, to end: Angle, segments: Int = 0, color: Color = Renderer.shapeColor) {
		DrawCircleSectorLines(position, radius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	//MARK: Ellipse
	
	@inlinable
	public static func ellipseOutline(at x: Int, _ y: Int, radius radiusH: Float, _ radiusV: Float, color: Color = Renderer.shapeColor) {
		DrawEllipseLines(x.toInt32, y.toInt32, radiusH, radiusV, color)
	}
	
	@inlinable
	public static func ellipseOutline(at position: Vector2f, radius: Vector2f, color: Color = Renderer.shapeColor) {
		DrawEllipseLines(position.x.toInt32, position.y.toInt32, radius.x, radius.y, color)
	}
	
	//MARK: Ring
	
	@inlinable
	public static func ringOutline(at x: Int, _ y: Int, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle, to end: Angle, color: Color = Renderer.shapeColor) {
		DrawRingLines(Vector2f(x.toFloat, y.toFloat), innerRadius, outerRadius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	@inlinable
	public static func ringOutline(at position: Vector2f, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle, to end: Angle, color: Color = Renderer.shapeColor) {
		DrawRingLines(position, innerRadius, outerRadius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
}
