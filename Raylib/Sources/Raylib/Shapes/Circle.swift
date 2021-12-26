//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import CRaylib

//MARK: - Circle

public struct Circle {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var radius: Float
	
	//MARK: Computed Properties
	
	@inlinable public var diameter: Float {
		radius * 2
	}
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, radius: Float) {
		self.position = position
		self.radius = radius
	}
	
	@inlinable public init(at x: Float, _ y: Float, radius: Float) {
		self.init(at: Vector2f(x, y), radius: radius)
	}
	
	//MARK: Collision Methods
	
	@inlinable public func contains(_ x: Int, _ y: Int) -> Bool {
		CheckCollisionPointCircle(Vector2f(x.toFloat, y.toFloat).toRaylib, position.toRaylib, radius)
	}
	
	@inlinable public func contains(_ point: Vector2f) -> Bool {
		CheckCollisionPointCircle(point.toRaylib, position.toRaylib, radius)
	}
	
	@inlinable public func collided(with other: Rectangle) -> Bool {
		CheckCollisionCircleRec(position.toRaylib, radius, other)
	}
	
	@inlinable public func collided(with other: Circle) -> Bool {
		CheckCollisionCircles(position.toRaylib, radius, other.position.toRaylib, other.radius)
	}
	
}
