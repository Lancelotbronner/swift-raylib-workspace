//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import CRaylib

//MARK: - Vector Protocol

public protocol Vector {
	
	associatedtype Scalar
	
	init(_ v: Scalar)
	
	static func forEach(_ body: (WritableKeyPath<Self, Scalar>) throws -> Void) rethrows
	static func map(_ transform: (WritableKeyPath<Self, Scalar>) throws -> Scalar) rethrows -> Self
	
}

extension Vector {
	
	//MARK: Utilities
	
	@usableFromInline func forEach(_ transform: (Scalar) throws -> Void) rethrows {
		try Self.forEach { kp in
			try transform(self[keyPath: kp])
		}
	}
	
	@usableFromInline mutating func unary(_ transform: (inout Scalar) throws -> Void) rethrows {
		try Self.forEach { kp in
			try transform(&self[keyPath: kp])
		}
	}
	
	@usableFromInline func unary(_ transform: (Scalar) throws -> Scalar) rethrows -> Self {
		try Self.map { kp in
			try transform(self[keyPath: kp])
		}
	}
	
	@usableFromInline mutating func binary(with scalar: Scalar, operation: (inout Scalar, Scalar) -> Void) {
		unary { operation(&$0, scalar) }
	}
	
	@usableFromInline func binary(with scalar: Scalar, operation: (Scalar, Scalar) -> Scalar) -> Self {
		unary { operation($0, scalar) }
	}
	
	@usableFromInline mutating func binary(with vector: Self, operation: (inout Scalar, Scalar) throws -> Void) rethrows {
		try Self.forEach { kp in
			try operation(&self[keyPath: kp], vector[keyPath: kp])
		}
	}
	
	@usableFromInline func binary(with vector: Self, operation: (Scalar, Scalar) throws -> Scalar) rethrows -> Self {
		try Self.map { kp in
			try operation(self[keyPath: kp], vector[keyPath: kp])
		}
	}
	
}

//MARK: - Integer Literal

extension Vector where Scalar: ExpressibleByIntegerLiteral {
	
	//MARK: Constants
	
	@inlinable public static var zero: Self {
		Self(0)
	}
	
	@inlinable public static var one: Self {
		Self(1)
	}
	
}

//MARK: - Additive Arithmetic

extension Vector where Scalar: AdditiveArithmetic {
	
	//MARK: Operators
	
	@inlinable public static func + (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: +)
	}
	
	@inlinable public static func += (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: +=)
	}
	
	@inlinable public static func - (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: -)
	}
	
	@inlinable public static func -= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: -=)
	}
	
	@inlinable public static func + (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: +)
	}
	
	@inlinable public static func += (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: +=)
	}
	
	@inlinable public static func - (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: -)
	}
	
	@inlinable public static func -= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: -=)
	}
	
}

//MARK: - Numeric Arithmetic

extension Vector where Scalar: Numeric {
	
	//MARK: Computed Properties
	
	@inlinable public var magnitude2: Scalar {
		dot(self)
	}
	
	//MARK: Methods
	
	@inlinable public func dot(_ other: Self) -> Scalar {
		var sum = Scalar.zero
		Self.forEach { kp in
			sum += self[keyPath: kp] * other[keyPath: kp]
		}
		return sum
	}
	
	@inlinable public func distance(to other: Self) -> Scalar {
		var sum = Scalar.zero
		Self.forEach { kp in
			let diff = self[keyPath: kp] - other[keyPath: kp]
			sum += diff * diff
		}
		return sum
	}
	
	//MARK: Operators
	
	@inlinable public static func * (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: *)
	}
	
	@inlinable public static func *= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: *=)
	}
	
	@inlinable public static func * (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: *)
	}
	
	@inlinable public static func *= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: *=)
	}
	
}

//MARK: - Signed Numeric Arithmetic

extension Vector where Scalar: SignedNumeric {
	
	//MARK: Operators
	
	@inlinable public static prefix func - (val: Self) -> Self {
		val.unary { -$0 }
	}
	
}

//MARK: - Floating Point Arithmetic

extension Vector where Scalar: FloatingPoint {
	
	//MARK: Computed Properties
	
	@inlinable public var normalized: Self {
		normalized(from: 0, to: 1)
	}
	
	@inlinable public var magnitude: Scalar {
		sqrt(magnitude2)
	}
	
	//MARK: Normalization Methods
	
	@inlinable public func normalized(from start: Scalar, to end: Scalar) -> Self {
		(self - start) / (end - start)
	}
	
	@inlinable public func normalized(in range: Range<Scalar>) -> Self {
		normalized(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func normalize(from start: Scalar, to end: Scalar) {
		self = normalized(from: start, to: end)
	}
	
	@inlinable public mutating func normalize(in range: Range<Scalar>) {
		self = normalized(in: range)
	}
	
	//MARK: Remapping Methods
	
	@inlinable public func remapped(input inputStart: Scalar, to inputEnd: Scalar, output outputStart: Scalar, to outputEnd: Scalar) -> Self {
		normalized(from: inputStart, to: inputEnd) * (outputEnd - outputStart) + outputStart
	}
	
	@inlinable public func remapped(from input: Range<Scalar>, to output: Range<Scalar>) -> Self {
		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
	}
	
	@inlinable public mutating func remap(input inputStart: Scalar, to inputEnd: Scalar, output outputStart: Scalar, to outputEnd: Scalar) {
		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
	}
	
	@inlinable public mutating func remap(from input: Range<Scalar>, to output: Range<Scalar>) {
		self = remapped(from: input, to: output)
	}
	
	//MARK: Operators
	
	@inlinable public static func / (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: /)
	}
	
	@inlinable public static func /= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: /=)
	}
	
	@inlinable public static func / (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: /)
	}
	
	@inlinable public static func /= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: /=)
	}
	
}

//MARK: - Comparable Arithmetic

extension Vector where Scalar: Comparable {
	
	//MARK: Clamping Methods
	
	@inlinable public mutating func minimum(of value: Scalar) {
		self = binary(with: value, operation: max)
	}
	
	@inlinable public mutating func minimum(of value: Self) {
		self = binary(with: value, operation: max)
	}
	
	@inlinable public mutating func maximum(of value: Scalar) {
		self = binary(with: value, operation: min)
	}
	
	@inlinable public mutating func maximum(of value: Self) {
		self = binary(with: value, operation: min)
	}
	
	@inlinable public mutating func clamp(between minimum: Scalar, and maximum: Scalar) {
		unary { $0.clamp(between: minimum, and: maximum) }
	}
	
	@inlinable public mutating func clamp(between minimum: Self, and maximum: Self) {
		Self.forEach { kp in
			self[keyPath: kp].clamp(between: minimum[keyPath: kp], and: maximum[keyPath: kp])
		}
	}
	
	@inlinable public func clamped(between minimum: Scalar, and maximum: Scalar) -> Self {
		unary { $0.clamped(between: minimum, and: maximum) }
	}
	
	@inlinable public func clamped(between minimum: Self, and maximum: Self) -> Self {
		Self.map { kp in
			self[keyPath: kp].clamped(between: minimum[keyPath: kp], and: maximum[keyPath: kp])
		}
	}
	
}

// TODO: Lerping, instead lerp TO other BY time
//extension Vector where Scalar: Numeric {
//
//	@inlinable public func lerped(from start: Scalar, to end: Scalar) -> Self {
//		unary { start + $0 * (end - start) }
//	}
//
//	@inlinable public mutating func lerp(from start: Scalar, to end: Scalar) {
//		self = lerped(from: start, to: endunary { start + $0 * (end - start) }
//	}
//
//}
//
//extension Vector where Scalar: Numeric & Comparable {
//
//	@inlinable public func lerped(in range: Range<Scalar>) -> Self {
//		lerped(from: range.lowerBound, to: range.upperBound)
//	}
//
//	@inlinable public mutating func lerp(in range: Range<Scalar>) {
//		self = lerped(in: range)
//	}
//
//}

//
//	public func reflected(to normal: Vector2f) -> Vector2f {
//		Vector2Reflect(self, normal)
//	}
//
//	public mutating func reflect(to normal: Vector2f) {
//		self = reflected(to: normal)
//	}
