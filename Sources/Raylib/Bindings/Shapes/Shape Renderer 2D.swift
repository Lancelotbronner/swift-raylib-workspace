//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Shape Renderer

extension Renderer2D {
	
	//MARK: Triangle
	
	@inlinable
	public static func triangle(_ p1: Vector2f, _ p2: Vector2f, _ p3: Vector2f, color: Color = Renderer.shapeColor) {
		DrawTriangle(p1, p2, p3, color)
	}
	
	@inlinable
	public static func triangle(_ shape: Triangle, color: Color = Renderer.shapeColor) {
		DrawTriangle(shape.a, shape.b, shape.c, color)
	}
	
	//MARK: Rectangle
	
	@inlinable
	public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.shapeColor) {
		DrawRectangle(x.toInt32, y.toInt32, width.toInt32, height.toInt32, color)
	}
	
	@inlinable
	public static func rectangle(at position: Vector2f, size: Vector2f, color: Color = Renderer.shapeColor) {
		DrawRectangle(position.x.toInt32, position.y.toInt32, size.x.toInt32, size.y.toInt32, color)
	}
	
	@inlinable
	public static func rectangle(_ shape: Rectangle, color: Color = Renderer.shapeColor) {
		DrawRectangle(shape.x.toInt32, shape.y.toInt32, shape.width.toInt32, shape.height.toInt32, color)
	}
	
	@inlinable
	public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, gradientH from: Color, _ to: Color) {
		DrawRectangleGradientH(x.toInt32, y.toInt32, width.toInt32, height.toInt32, from, to)
	}
	
	@inlinable
	public static func rectangle(at position: Vector2f, size: Vector2f, gradientH from: Color, _ to: Color) {
		DrawRectangleGradientH(position.x.toInt32, position.y.toInt32, size.x.toInt32, size.y.toInt32, from, to)
	}
	
	@inlinable
	public static func rectangle(_ shape: Rectangle, gradientH from: Color, _ to: Color) {
		DrawRectangleGradientH(shape.x.toInt32, shape.y.toInt32, shape.width.toInt32, shape.height.toInt32, from, to)
	}
	
	@inlinable
	public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, gradientV from: Color, _ to: Color) {
		DrawRectangleGradientV(x.toInt32, y.toInt32, width.toInt32, height.toInt32, from, to)
	}
	
	@inlinable
	public static func rectangle(at position: Vector2f, size: Vector2f, gradientV from: Color, _ to: Color) {
		DrawRectangleGradientV(position.x.toInt32, position.y.toInt32, size.x.toInt32, size.y.toInt32, from, to)
	}
	
	@inlinable
	public static func rectangle(_ shape: Rectangle, gradientV from: Color, _ to: Color) {
		DrawRectangleGradientV(shape.x.toInt32, shape.y.toInt32, shape.width.toInt32, shape.height.toInt32, from, to)
	}
	
	@inlinable
	public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, gradient topLeft: Color, _ bottomLeft: Color, _ bottomRight: Color, _ topRight: Color) {
		DrawRectangleGradientEx(.init(x: x.toFloat, y: y.toFloat, width: width.toFloat, height: height.toFloat), topLeft, bottomLeft, bottomRight, topRight)
	}
	
	@inlinable
	public static func rectangle(at position: Vector2f, size: Vector2f, gradient topLeft: Color, _ bottomLeft: Color, _ bottomRight: Color, _ topRight: Color) {
		DrawRectangleGradientEx(.init(at: position, size: size), topLeft, bottomLeft, bottomRight, topRight)
	}
	
	@inlinable
	public static func rectangle(_ shape: Rectangle, gradient topLeft: Color, _ bottomLeft: Color, _ bottomRight: Color, _ topRight: Color) {
		DrawRectangleGradientEx(shape, topLeft, bottomLeft, bottomRight, topRight)
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
	
	@inlinable
	public static func circle(_ shape: Circle, color: Color = Renderer.shapeColor) {
		DrawCircleV(shape.position, shape.radius, color)
	}
	
	@inlinable
	public static func circle(at x: Int, _ y: Int, radius: Float, gradient from: Color, _ to: Color) {
		DrawCircleGradient(x.toInt32, y.toInt32, radius, from, to)
	}
	
	@inlinable
	public static func circle(at position: Vector2f, radius: Float, gradient from: Color, _ to: Color) {
		DrawCircleGradient(position.x.toInt32, position.y.toInt32, radius, from, to)
	}
	
	@inlinable
	public static func circle(_ shape: Circle, gradient from: Color, _ to: Color) {
		DrawCircleGradient(shape.position.x.toInt32, shape.position.y.toInt32, shape.radius, from, to)
	}
	
	//MARK: Sector
	
	@inlinable
	public static func sector(at x: Int, _ y: Int, radius: Float, from start: Angle, to end: Angle, segments: Int = 0, color: Color = Renderer.shapeColor) {
		DrawCircleSector(Vector2f(x.toFloat, y.toFloat), radius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	@inlinable
	public static func sector(at position: Vector2f, radius: Float, from start: Angle, to end: Angle, segments: Int = 0, color: Color = Renderer.shapeColor) {
		DrawCircleSector(position, radius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	//MARK: Ellipse
	
	@inlinable
	public static func ellipse(at x: Int, _ y: Int, radius radiusH: Float, _ radiusV: Float, color: Color = Renderer.shapeColor) {
		DrawEllipse(x.toInt32, y.toInt32, radiusH, radiusV, color)
	}
	
	@inlinable
	public static func ellipse(at position: Vector2f, radius: Vector2f, color: Color = Renderer.shapeColor) {
		DrawEllipse(position.x.toInt32, position.y.toInt32, radius.x, radius.y, color)
	}
	
	//MARK: Ring
	
	@inlinable
	public static func ring(at x: Int, _ y: Int, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle, to end: Angle, color: Color = Renderer.shapeColor) {
		DrawRing(Vector2f(x.toFloat, y.toFloat), innerRadius, outerRadius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	@inlinable
	public static func ring(at position: Vector2f, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle, to end: Angle, color: Color = Renderer.shapeColor) {
		DrawRing(position, innerRadius, outerRadius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
}