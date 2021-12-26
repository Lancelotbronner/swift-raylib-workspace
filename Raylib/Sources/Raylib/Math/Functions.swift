//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

//MARK: - Normalization Functions

public protocol NormalizationFunctions {
	
	func normalized(from start: Self, to end: Self) -> Self
	mutating func normalize(from start: Self, to end: Self)
	
}

extension NormalizationFunctions {
	
	//MARK: Defaults
	
	@inlinable public func normalized(from start: Self, to end: Self) -> Self where Self: FloatingPoint {
		(self - start) / (end - start)
	}
	
	//MARK: Methods
	
	@inlinable public func normalized(in range: Range<Self>) -> Self where Self: Comparable {
		normalized(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func normalize(from start: Self, to end: Self) {
		self = normalized(from: start, to: end)
	}
	
	@inlinable public mutating func normalize(in range: Range<Self>) where Self: Comparable {
		self = normalized(in: range)
	}
	
}

extension NormalizationFunctions where Self: ExpressibleByIntegerLiteral {
	
	//MARK: Computed Properties
	
	@inlinable public var normalized: Self {
		normalized(from: 0, to: 1)
	}
	
}

//MARK: - Remapping Functions

public protocol RemappingFunctions {
	
	func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self
	mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self)
	
}

extension RemappingFunctions {
	
	//MARK: Defaults
	
	@inlinable public func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self where Self: FloatingPoint {
		(self - inputStart) / (inputEnd - inputStart) * (outputEnd - outputStart) + outputStart
	}
	
	//MARK: Methods
	
	@inlinable public func remapped(from input: Range<Self>, to output: Range<Self>) -> Self where Self: Comparable {
		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
	}
	
	@inlinable public mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) {
		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
	}
	
	@inlinable public mutating func remap(from input: Range<Self>, to output: Range<Self>) where Self: Comparable {
		self = remapped(from: input, to: output)
	}
	
}
