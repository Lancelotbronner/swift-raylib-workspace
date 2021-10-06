//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

//MARK: - Numeric Representation

extension FloatingPoint {
	
	//MARK: Interpolation
	
	@inlinable
	public func lerped(from start: Self, to end: Self) -> Self {
		start + self * (end - start)
	}
	
	@inlinable
	public func lerped(in range: Range<Self>) -> Self {
		lerped(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable
	public mutating func lerp(from start: Self, to end: Self) {
		self = lerped(from: start, to: end)
	}
	
	@inlinable
	public mutating func lerp(in range: Range<Self>) {
		self = lerped(in: range)
	}
	
	//MARK: Normalization
	
	@inlinable
	public func normalized(from start: Self, to end: Self) -> Self {
		(self - start) / (end - start)
	}
	
	@inlinable
	public func normalized(in range: Range<Self>) -> Self {
		normalized(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable
	public mutating func normalize(from start: Self, to end: Self) {
		self = normalized(from: start, to: end)
	}
	
	@inlinable
	public mutating func normalized(in range: Range<Self>) {
		self = normalized(in: range)
	}
	
	//MARK: Mapping
	
	@inlinable
	public func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self {
		normalized(from: inputStart, to: inputEnd) * (outputEnd - outputStart) + outputStart
	}
	
	@inlinable
	public func remapped(from input: Range<Self>, to output: Range<Self>) -> Self {
		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
	}
	
	@inlinable
	public mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) {
		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
	}
	
	@inlinable
	public mutating func remap(from input: Range<Self>, to output: Range<Self>) {
		self = remapped(from: input, to: output)
	}
	
}


//MARK: - Binary Representation

extension BinaryFloatingPoint {
	
	//MARK: Floating Point Conversions
	
	@_transparent
	public var toFloat: Float {
		.init(self)
	}
	
	@_transparent
	public var toDouble: Double {
		.init(self)
	}
	
	//MARK: Integer Conversions
	
	@_transparent
	public var toInt: Int {
		.init(self)
	}
	
	@_transparent
	public var toUInt: UInt {
		.init(self)
	}
	
	@_transparent
	public var toInt32: Int32 {
		.init(self)
	}
	
	@_transparent
	public var toUInt32: UInt32 {
		.init(self)
	}
	
	@_transparent
	public var toInt8: Int8 {
		.init(self)
	}
	
	@_transparent
	public var toUInt8: UInt8 {
		.init(self)
	}
	
}
