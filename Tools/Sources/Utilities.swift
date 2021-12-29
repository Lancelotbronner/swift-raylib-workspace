//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-29.
//

import Dispatch

//MARK: - Stopwatch

struct Stopwatch {
	
	//MARK: Properties
	
	private var reference: DispatchTime
	
	//MARK: Computed Properties
	
	@inlinable var nanoseconds: UInt64 {
		(DispatchTime.now().uptimeNanoseconds - reference.uptimeNanoseconds)
	}
	
	@inlinable var microseconds: UInt64 {
		nanoseconds / 1000
	}
	
	@inlinable var microsecondsInMilliseconds: Double {
		Double(microseconds) / 1000
	}
	
	@inlinable var milliseconds: UInt64 {
		microseconds / 1000
	}
	
	@inlinable var seconds: UInt64 {
		milliseconds / 1000
	}
	
	//MARK: Initialization
	
	@inlinable init() {
		reference = .now()
	}
	
	//MARK: Methods
	
	@inlinable mutating func reset() {
		reference = .now()
	}
	
}
