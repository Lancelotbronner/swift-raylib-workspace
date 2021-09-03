//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

extension Renderer {
	
	//MARK: Rectangle
	
	@inlinable
	public static func rectangle(at x: Int, _ y: Int, size width: Float, by height: Float, color: Color = .black) {
		DrawRectangle(x.toInt32, y.toInt32, width.toInt32, height.toInt32, color)
	}
	
	//MARK: Circle
	
	@inlinable
	public static func circle(at x: Int, _ y: Int, radius: Float = 20, color: Color = .black) {
		DrawCircle(x.toInt32, y.toInt32, radius, color)
	}
	
	@inlinable
	public static func circle(at position: Vector2f, radius: Float = 20, color: Color = .black) {
		DrawCircleV(position, radius, color)
	}
	
}
