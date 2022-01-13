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
	
	@inlinable public func pixel(at x: Int, _ y: Int, _ color: Color) {
		DrawPixel(x.toInt32, y.toInt32, color.toRaylib)
	}
	
	@inlinable public func pixel(at position: Vector2f, _ color: Color) {
		DrawPixel(position.x.toInt32, position.y.toInt32, color.toRaylib)
	}
	
	//MARK: Line
	
	@inlinable public func line(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, color: Color = Renderer.color) {
		DrawLine(startX.toInt32, startY.toInt32, endX.toInt32, endY.toInt32, color.toRaylib)
	}
	
	@inlinable public func line(from start: Vector2f, to end: Vector2f, color: Color = Renderer.color) {
		DrawLineV(start.toRaylib, end.toRaylib, color.toRaylib)
	}
	
	@inlinable public func line(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, thickness: Float, color: Color = Renderer.color) {
		DrawLineEx(Vector2(startX.toFloat, startY.toFloat).toRaylib, Vector2f(endX.toFloat, endY.toFloat).toRaylib, thickness, color.toRaylib)
	}
	
	@inlinable public func line(from start: Vector2f, to end: Vector2f, thickness: Float, color: Color = Renderer.color) {
		DrawLineEx(start.toRaylib, end.toRaylib, thickness, color.toRaylib)
	}
	
	@inlinable public func lines(_ points: [Vector2f], color: Color = Renderer.color) {
		points.withUnsafeBufferPointer { buffer in
			var tmp = buffer.baseAddress!.pointee.toRaylib
			DrawLineStrip(&tmp, points.count.toInt32, color.toRaylib)
		}
	}
	
	//MARK: Bezier
	
	@inlinable public func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, thickness: Float, color: Color = Renderer.color) {
		DrawLineBezier(Vector2(startX.toFloat, startY.toFloat).toRaylib, Vector2f(endX.toFloat, endY.toFloat).toRaylib, thickness, color.toRaylib)
	}
	
	@inlinable public func bezier(from start: Vector2f, to end: Vector2f, thickness: Float, color: Color = Renderer.color) {
		DrawLineBezier(start.toRaylib, end.toRaylib, thickness, color.toRaylib)
	}
	
	@inlinable public func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, control controlX: Int, _ controlY: Int, thickness: Float, color: Color = Renderer.color) {
		DrawLineBezierQuad(Vector2(startX.toFloat, startY.toFloat).toRaylib, Vector2f(endX.toFloat, endY.toFloat).toRaylib, Vector2f(controlX.toFloat, controlY.toFloat).toRaylib, thickness, color.toRaylib)
	}
	
	@inlinable public func bezier(from start: Vector2f, to end: Vector2f, control: Vector2f, thickness: Float, color: Color = Renderer.color) {
		DrawLineBezierQuad(start.toRaylib, end.toRaylib, control.toRaylib, thickness, color.toRaylib)
	}
	
}
