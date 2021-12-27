//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import CRaylib

//MARK: - Outline 2D Renderer

extension OutlineRenderer2D {
	
	//MARK: Triangle
	
	@inlinable public static func triangle(_ p1: Vector2f, _ p2: Vector2f, _ p3: Vector2f, color: Color = Renderer.shapeColor) {
		DrawTriangleLines(p1.toRaylib, p2.toRaylib, p3.toRaylib, color)
	}
	
	//MARK: Rectangle
	
	@inlinable public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.shapeColor) {
		DrawRectangleLines(x.toInt32, y.toInt32, width.toInt32, height.toInt32, color)
	}
	
	@inlinable public static func rectangle(_ rect: Rectangle, color: Color = Renderer.shapeColor) {
		DrawRectangleLines(rect.x.toInt32, rect.y.toInt32, rect.width.toInt32, rect.height.toInt32, color)
	}
	
	@inlinable public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, thickness: Int, color: Color = Renderer.shapeColor) {
		DrawRectangleLinesEx(Rectangle(at: x.toFloat, y.toFloat, size: width.toFloat, height.toFloat), thickness.toFloat, color)
	}
	
	@inlinable public static func rectangle(_ rect: Rectangle, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawRectangleLinesEx(rect, thickness, color)
	}
	
	//MARK: Rounded Rectangle
	
	@inlinable public static func roundedRectangle(_ shape: RoundedRectangle, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawRectangleRoundedLines(shape.rectangle, shape.cornerRadius, shape.segments.toInt32, thickness, color)
	}
	
	//MARK: Circle
	
	@inlinable public static func circle(at x: Int, _ y: Int, radius: Float, color: Color = Renderer.shapeColor) {
		DrawCircleLines(x.toInt32, y.toInt32, radius, color)
	}
	
	@inlinable public static func circle(at position: Vector2f, radius: Float, color: Color = Renderer.shapeColor) {
		DrawCircleLines(position.x.toInt32, position.y.toInt32, radius, color)
	}
	
	//MARK: Sector
	
	@inlinable public static func sector(at x: Int, _ y: Int, radius: Float, from start: Angle<Float>, to end: Angle<Float>, segments: Int = 0, color: Color = Renderer.shapeColor) {
		DrawCircleSectorLines(Vector2f(x.toFloat, y.toFloat).toRaylib, radius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	@inlinable public static func sector(at position: Vector2f, radius: Float, from start: Angle<Float>, to end: Angle<Float>, segments: Int = 0, color: Color = Renderer.shapeColor) {
		DrawCircleSectorLines(position.toRaylib, radius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	//MARK: Ellipse
	
	@inlinable public static func ellipse(at x: Int, _ y: Int, radius radiusH: Float, _ radiusV: Float, color: Color = Renderer.shapeColor) {
		DrawEllipseLines(x.toInt32, y.toInt32, radiusH, radiusV, color)
	}
	
	@inlinable public static func ellipse(at position: Vector2f, radius: Vector2f, color: Color = Renderer.shapeColor) {
		DrawEllipseLines(position.x.toInt32, position.y.toInt32, radius.x, radius.y, color)
	}
	
	//MARK: Ring
	
	@inlinable public static func ring(at x: Int, _ y: Int, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle<Float>, to end: Angle<Float>, color: Color = Renderer.shapeColor) {
		DrawRingLines(Vector2f(x.toFloat, y.toFloat).toRaylib, innerRadius, outerRadius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	@inlinable public static func ring(at position: Vector2f, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle<Float>, to end: Angle<Float>, color: Color = Renderer.shapeColor) {
		DrawRingLines(position.toRaylib, innerRadius, outerRadius, start.toDegrees, end.toDegrees, segments.toInt32, color)
	}
	
	//MARK: Polygon
	
	@inlinable public static func polygon(at x: Int, _ y: Int, sides: Int, radius: Float, rotation: Angle<Float> = .zero, color: Color = Renderer.shapeColor) {
		DrawPolyLines(Vector2f(x.toFloat, y.toFloat).toRaylib, sides.toInt32, radius, rotation.toDegrees, color)
	}
	
	@inlinable public static func polygon(at position: Vector2f, sides: Int, radius: Float, rotation: Angle<Float> = .zero, color: Color = Renderer.shapeColor) {
		DrawPolyLines(position.toRaylib, sides.toInt32, radius, rotation.toDegrees, color)
	}
	
	@inlinable public static func polygon(_ shape: Polygon, color: Color = Renderer.shapeColor) {
		DrawPolyLines(shape.position.toRaylib, shape.sides.toInt32, shape.radius, shape.rotation.toDegrees, color)
	}
	
	//	@inlinable
	//	public static func polygonOutline(_ shape: Polygon, thickness: Float, color: Color = Renderer.shapeColor) {
	//		DrawPolyLinesEx(shape.position, shape.sides.toInt32, shape.radius, shape.rotation.toDegrees, thickness, color)
	//	}
	
}
