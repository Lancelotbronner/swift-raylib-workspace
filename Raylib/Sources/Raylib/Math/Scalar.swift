//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

//MARK: - Comparable Arithmetics

extension Comparable {
	
	//MARK: Clamping Methods
	
	@inlinable public mutating func minimum(of value: Self) {
		self = max(self, value)
	}
	
	@inlinable public mutating func maximum(of value: Self) {
		self = min(self, value)
	}
	
	@inlinable public mutating func clamp(between min: Self, and max: Self) {
		minimum(of: min)
		maximum(of: max)
	}
	
	@inlinable public func clamped(between minimum: Self, and maximum: Self) -> Self {
		min(max(self, minimum), maximum)
	}
	
}

//MARK: - Numeric Arithmetics

// TODO: Instead lerp TO value BY time

extension Numeric {
	
	@inlinable public func lerped(from start: Self, to end: Self) -> Self {
		start + self * (end - start)
	}
	
	@inlinable public mutating func lerp(from start: Self, to end: Self) {
		self = lerped(from: start, to: end)
	}
	
}

//MARK: - Numeric & Comparable Arithmetics

extension Numeric where Self: Comparable {
	
	//MARK: Lerping Methods
	
	@inlinable public func lerped(in range: Range<Self>) -> Self {
		lerped(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func lerp(in range: Range<Self>) {
		self = lerped(in: range)
	}
	
}

//MARK: - Floating Point Arithmetics

extension FloatingPoint {
	
	//MARK: Normalization Methods
	
	@inlinable public func normalized(from start: Self, to end: Self) -> Self {
		(self - start) / (end - start)
	}
	
	@inlinable public func normalized(in range: Range<Self>) -> Self {
		normalized(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func normalize(from start: Self, to end: Self) {
		self = normalized(from: start, to: end)
	}
	
	@inlinable public mutating func normalized(in range: Range<Self>) {
		self = normalized(in: range)
	}
	
	//MARK: Remapping Methods
	
	@inlinable public func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self {
		normalized(from: inputStart, to: inputEnd) * (outputEnd - outputStart) + outputStart
	}
	
	@inlinable public func remapped(from input: Range<Self>, to output: Range<Self>) -> Self {
		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
	}
	
	@inlinable public mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) {
		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
	}
	
	@inlinable public mutating func remap(from input: Range<Self>, to output: Range<Self>) {
		self = remapped(from: input, to: output)
	}
	
}
