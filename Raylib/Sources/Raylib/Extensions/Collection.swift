//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

//MARK: - Collection

extension Collection where Index == Int {
	
	@inlinable public func roundRobin(after i: Index) -> Index {
		index(after: i) % count
	}
	
}

extension BidirectionalCollection where Index == Int {
	
	@inlinable public func roundRobin(before i: Index) -> Index {
		let tmp = index(before: i)
		return tmp <= 0 ? count - 1 : tmp
	}
	
}

//MARK: - Array

extension Array {
	
	@inlinable public init(repeat count: Int, value: () -> Element) {
		self.init(unsafeUninitializedCapacity: count) { buffer, count in
			for i in buffer.indices {
				buffer[i] = value()
			}
		}
	}
	
	@inlinable public init(repeat count: Int, value: @autoclosure () -> Element) {
		self.init(repeat: count, value: value)
	}
	
}
