//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

extension Comparable {
	
	//MARK: Methods
	
	public mutating func minimum(of value: Self) {
		self = max(self, value)
	}
	
	public mutating func maximum(of value: Self) {
		self = min(self, value)
	}
	
	public mutating func clamp(between min: Self, and max: Self) {
		minimum(of: min)
		maximum(of: max)
	}
	
	public func clamped(between minimum: Self, and maximum: Self) -> Self {
		min(max(self, minimum), maximum)
	}
	
}
