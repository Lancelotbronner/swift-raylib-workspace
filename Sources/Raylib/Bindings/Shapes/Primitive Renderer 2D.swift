//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import CRaylib

//MARK: - Primitive 2D Renderer

extension Renderer2D {
	
	//MARK: Pixel
	
	@inlinable
	public static func pixel(at x: Int, _ y: Int, _ color: Color) {
		DrawPixel(x.toInt32, y.toInt32, color)
	}
	
	@inlinable
	public static func pixel(at position: Vector2f, _ color: Color) {
		DrawPixel(position.x.toInt32, position.y.toInt32, color)
	}
	
	//MARK: Line
	
	@inlinable
	public static func line(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, color: Color = Renderer.shapeColor) {
		DrawLine(startX.toInt32, startY.toInt32, endX.toInt32, endY.toInt32, color)
	}
	
	@inlinable
	public static func line(from start: Vector2f, to end: Vector2f, color: Color = Renderer.shapeColor) {
		DrawLineV(start, end, color)
	}
	
	@inlinable
	public static func line(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawLineEx(Vector2(startX.toFloat, startY.toFloat), Vector2f(endX.toFloat, endY.toFloat), thickness, color)
	}
	
	@inlinable
	public static func line(from start: Vector2f, to end: Vector2f, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawLineEx(start, end, thickness, color)
	}
	
	@inlinable
	public static func lines(_ points: [Vector2f], color: Color = Renderer.shapeColor) {
		points.withUnsafeBufferPointer { buffer in
			// TODO: Does it actually mutate?
			DrawLineStrip(.init(mutating: buffer.baseAddress), points.count.toInt32, color)
		}
	}
	
	//MARK: Bezier
	
	@inlinable
	public static func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawLineBezier(Vector2(startX.toFloat, startY.toFloat), Vector2f(endX.toFloat, endY.toFloat), thickness, color)
	}
	
	@inlinable
	public static func bezier(from start: Vector2f, to end: Vector2f, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawLineBezier(start, end, thickness, color)
	}
	
	@inlinable
	public static func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, control controlX: Int, _ controlY: Int, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawLineBezierQuad(Vector2(startX.toFloat, startY.toFloat), Vector2f(endX.toFloat, endY.toFloat), Vector2f(controlX.toFloat, controlY.toFloat), thickness, color)
	}
	
	@inlinable
	public static func bezier(from start: Vector2f, to end: Vector2f, control: Vector2f, thickness: Float, color: Color = Renderer.shapeColor) {
		DrawLineBezierQuad(start, end, control, thickness, color)
	}
	
}