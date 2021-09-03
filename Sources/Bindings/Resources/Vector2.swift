//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Vector2

public typealias Vector2f = Vector2

extension Vector2f {
	
	//MARK: Constants
	
	@inlinable
	public static var zero: Vector2f { .init(0) }
	
	//MARK: Initialization
	
	@inlinable
	public init<F: BinaryFloatingPoint>(_ x: F, _ y: F) {
		self.init(x: x.toFloat, y: y.toFloat)
	}
	
	@inlinable
	public init<F: BinaryFloatingPoint>(_ c: F) {
		let tmp = c.toFloat
		self.init(x: tmp, y: tmp)
	}
	
}

//MARK: - Scalar Arithmetic

extension Vector2f {
	
	//MARK: Additive Arithmetic
	
	public static func + (lhs: Vector2, rhs: Float) -> Vector2 {
		.init(lhs.x + rhs, lhs.y + rhs)
	}
	
	public static func += (lhs: inout Vector2, rhs: Float) {
		lhs.x += rhs
		lhs.y += rhs
	}
	
	public static func - (lhs: Vector2, rhs: Float) -> Vector2 {
		.init(lhs.x - rhs, lhs.y - rhs)
	}
	
	public static func -= (lhs: inout Vector2, rhs: Float) {
		lhs.x -= rhs
		lhs.y -= rhs
	}
	
	//MARK: Multiplicative Arithmetic
	
	public static func * (lhs: Vector2, rhs: Float) -> Vector2 {
		.init(lhs.x * rhs, lhs.y * rhs)
	}
	
	public static func *= (lhs: inout Vector2, rhs: Float) {
		lhs.x *= rhs
		lhs.y *= rhs
	}
	
	public static func / (lhs: Vector2, rhs: Float) -> Vector2 {
		.init(lhs.x / rhs, lhs.y / rhs)
	}
	
	public static func /= (lhs: inout Vector2, rhs: Float) {
		lhs.x /= rhs
		lhs.y /= rhs
	}
	
}

//MARK: - Vector Arithmetic

extension Vector2f: AdditiveArithmetic {

	//MARK: Additive Arithmetic
	
	public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
		.init(lhs.x + rhs.x, lhs.y + rhs.y)
	}
	
	public static func - (lhs: Vector2, rhs: Vector2) -> Vector2 {
		.init(lhs.y - rhs.y, lhs.y - rhs.y)
	}
	
	//MARK: Equality
	
	public static func == (lhs: Vector2, rhs: Vector2) -> Bool {
		lhs.x == rhs.x && lhs.y == rhs.y
	}
	
}
