//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import CRaylib

//MARK: - Rectangle

public typealias Rectangle = CRaylib.Rectangle

extension Rectangle {
	
	//MARK: Computed Properties
	
	public var startX: Float { x }
	public var centerX: Float { x + width / 2 }
	public var endX: Float { x + width }
	public var startY: Float { y }
	public var centerY: Float { y + height / 2 }
	public var endY: Float { y + height }
	
	public var position: Vector2f { .init(x: x, y: y) }
	public var size: Vector2f { .init(width, height) }
	
	public var topLeft: Vector2f { .init(startX, endY) }
	public var top: Vector2f { .init(centerX, endY) }
	public var topRight: Vector2f { .init(endX, endY) }
	public var left: Vector2f { .init(startX, centerY) }
	public var center: Vector2f { .init(centerX, centerY) }
	public var right: Vector2f { .init(endX, centerY) }
	public var bottomLeft: Vector2f { .init(startX, startY) }
	public var bottom: Vector2f { .init(centerX, startY) }
	public var bottomRight: Vector2f { .init(endX, startY) }
	
	//MARK: Initialization
	
	@inlinable
	public init(at x: Float, _ y: Float, size width: Float, _ height: Float) {
		self.init(x: x, y: y, width: width, height: height)
	}
	
	@inlinable
	public init(at position: Vector2f, size: Vector2f) {
		self.init(x: position.x, y: position.y, width: size.x, height: size.y)
	}
	
	//MARK: Conversion Methods
	
	@inlinable
	public func rounded(to cornerRadius: Float, segments: Int = 0) -> RoundedRectangle {
		RoundedRectangle(round: self, by: cornerRadius, segments: segments)
	}
	
	//MARK: Collision Methods
	
	@inlinable
	public func contains(_ x: Float, _ y: Float) -> Bool {
		CheckCollisionPointRec(Vector2f(x, y), self)
	}
	
	@inlinable
	public func contains(_ point: Vector2f) -> Bool {
		CheckCollisionPointRec(point, self)
	}
	
	@inlinable
	public func collided(with other: Rectangle) -> Bool {
		CheckCollisionRecs(self, other)
	}
	
	@inlinable
	public func collided(with other: Circle) -> Bool {
		CheckCollisionCircleRec(other.position, other.radius, self)
	}
	
	@inlinable
	public func collision(with other: Rectangle) -> Rectangle {
		GetCollisionRec(self, other)
	}
	
}
