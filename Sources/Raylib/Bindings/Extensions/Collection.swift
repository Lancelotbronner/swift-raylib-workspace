//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

//MARK: - Collection

extension Collection where Index == Int {
	
	@inlinable
	public func roundRobin(after i: Index) -> Index {
		index(after: i) % count
	}
	
}

extension BidirectionalCollection where Index == Int {
	
	@inlinable
	public func roundRobin(before i: Index) -> Index {
		let tmp = index(before: i)
		return tmp <= 0 ? count : tmp
	}
	
}
