//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import CRaylib

//MARK: - Triangle

public struct Triangle {
	
	//MARK: Properties
	
	public var a: Vector2f
	public var b: Vector2f
	public var c: Vector2f
	
	//MARK: Initialization
	
	@inlinable public init(_ a: Vector2f, _ b: Vector2f, _ c: Vector2f) {
		self.a = a
		self.b = b
		self.c = c
	}
	
	//MARK: Methods
	
	@inlinable public func contains(_ x: Int, _ y: Int) -> Bool {
		CheckCollisionPointTriangle(Vector2(x.toFloat, y.toFloat).toRaylib, a.toRaylib, b.toRaylib, c.toRaylib)
	}
	
	@inlinable public func contains(_ point: Vector2f) -> Bool {
		CheckCollisionPointTriangle(point.toRaylib, a.toRaylib, b.toRaylib, c.toRaylib)
	}
	
}
