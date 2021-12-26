////
////  File.swift
////  File
////
////  Created by Christophe Bronner on 2021-09-01.
////
//
//import CRaylib
//
////MARK: - Vector2
//
//public typealias Vector2f = Vector2
//
//extension Vector2f {
//
//	//MARK: Constants
//
//	@inlinable
//	public static var zero: Vector2f { Vector2Zero() }
//
//	@inlinable
//	public static var one: Vector2f { Vector2One() }
//
//	//MARK: Computed Properties
//
//	public var length: Float { Vector2Length(self) }
//	public var squareLength: Float { Vector2LengthSqr(self) }
//
//	public var normalized: Vector2f { Vector2Normalize(self) }
//
//	//MARK: Initialization
//	
//	@inlinable
//	public init(_ x: Float, _ y: Float) {
//		self.init(x: x, y: y)
//	}
//
//	@inlinable
//	public init(_ value: Float) {
//		self.init(x: value, y: value)
//	}
//
//}
//
////MARK: - Scalar Arithmetic
//
//extension Vector2f {
//
//	//MARK: Additive Arithmetic
//
//	public static func + (lhs: Vector2f, rhs: Float) -> Vector2f {
//		Vector2AddValue(lhs, rhs)
//	}
//
//	public static func += (lhs: inout Vector2f, rhs: Float) {
//		lhs = lhs + rhs
//	}
//
//	public static func - (lhs: Vector2f, rhs: Float) -> Vector2f {
//		Vector2SubtractValue(lhs, rhs)
//	}
//
//	public static func -= (lhs: inout Vector2f, rhs: Float) {
//		lhs = lhs - rhs
//	}
//
//	//MARK: Multiplicative Arithmetic
//
//	public static func * (lhs: Vector2f, rhs: Float) -> Vector2f {
//		Vector2Scale(lhs, rhs)
//	}
//
//	public static func *= (lhs: inout Vector2f, rhs: Float) {
//		lhs = lhs * rhs
//	}
//
//	public static func / (lhs: Vector2f, rhs: Float) -> Vector2f {
//		.init(lhs.x / rhs, lhs.y / rhs)
//	}
//
//	public static func /= (lhs: inout Vector2f, rhs: Float) {
//		lhs.x /= rhs
//		lhs.y /= rhs
//	}
//
//}
//
////MARK: - Vector Arithmetic
//
//extension Vector2f: AdditiveArithmetic {
//
//	//MARK: Additive Arithmetic
//
//	public static func + (lhs: Vector2f, rhs: Vector2f) -> Vector2f {
//		Vector2Add(lhs, rhs)
//	}
//
//	public static func - (lhs: Vector2f, rhs: Vector2f) -> Vector2f {
//		Vector2Subtract(lhs, rhs)
//	}
//
//	public static prefix func - (val: inout Vector2f) {
//		val = Vector2Negate(val)
//	}
//
//	//MARK: Multiplicative Arithmetic
//
//	public static func * (lhs: Vector2f, rhs: Vector2f) -> Vector2f {
//		Vector2Multiply(lhs, rhs)
//	}
//
//	public static func *= (lhs: inout Vector2f, rhs: Vector2f) {
//		lhs = lhs * rhs
//	}
//
//	public static func / (lhs: Vector2f, rhs: Vector2f) -> Vector2f {
//		Vector2Divide(lhs, rhs)
//	}
//
//	public static func /= (lhs: inout Vector2f, rhs: Vector2f) {
//		lhs = lhs / rhs
//	}
//
//	//MARK: Vector Operations
//
//	public func dot(_ other: Vector2f) -> Float {
//		Vector2DotProduct(self, other)
//	}
//
//	public func reflected(to normal: Vector2f) -> Vector2f {
//		Vector2Reflect(self, normal)
//	}
//
//	public mutating func reflect(to normal: Vector2f) {
//		self = reflected(to: normal)
//	}
//
//	//MARK: Clamping
//
//	public mutating func minimum(of other: Vector2f) {
//		x.minimum(of: other.x)
//		y.minimum(of: other.y)
//	}
//
//	public mutating func maximum(of other: Vector2f) {
//		x.maximum(of: other.x)
//		y.maximum(of: other.y)
//	}
//
//	public mutating func clamp(between min: Vector2f, and max: Vector2f) {
//		minimum(of: min)
//		maximum(of: max)
//	}
//
//	public func clamped(between min: Vector2f, and max: Vector2f) -> Vector2f {
//		var tmp = self
//		tmp.clamp(between: min, and: max)
//		return tmp
//	}
//
//	//MARK: Equality
//
//	public static func == (lhs: Vector2f, rhs: Vector2f) -> Bool {
//		lhs.x == rhs.x && lhs.y == rhs.y
//	}
//
//}
//
////MARK: - Space Arithmetic
//
//extension Vector2f {
//
//	//MARK: Position
//
//	public func lerped(towards other: Vector2f, by amount: Float) -> Vector2f {
//		Vector2Lerp(self, other, amount)
//	}
//
//	public mutating func lerp(towards other: Vector2f, by amount: Float) {
//		self = lerped(towards: other, by: amount)
//	}
//
//	public func distance(to other: Vector2f) -> Float {
//		Vector2Distance(self, other)
//	}
//
//	public func move(towards other: Vector2f, upTo distance: Float) -> Vector2f {
//		Vector2MoveTowards(self, other, distance)
//	}
//
//	//MARK: Rotation
//
//	public func angle(to other: Vector2f) -> Angle {
//		.degrees(Vector2Angle(self, other))
//	}
//
//	public func rotated(by angle: Angle) -> Vector2f {
//		Vector2Rotate(self, angle.toDegrees)
//	}
//
//	public mutating func rotate(by angle: Angle) {
//		self = rotated(by: angle)
//	}
//
//}
