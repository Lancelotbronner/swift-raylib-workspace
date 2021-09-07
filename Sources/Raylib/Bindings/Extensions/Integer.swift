//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

extension BinaryInteger {
	
	//MARK: Integer Conversions
	
	@inlinable
	public var toInt: Int {
		.init(truncatingIfNeeded: self)
	}
	
	@inlinable
	public var toUInt: UInt {
		.init(truncatingIfNeeded: self)
	}
	
	@inlinable
	public var toInt32: Int32 {
		.init(truncatingIfNeeded: self)
	}
	
	@inlinable
	public var toUInt32: UInt32 {
		.init(truncatingIfNeeded: self)
	}
	
	@inlinable
	public var toInt8: Int8 {
		.init(truncatingIfNeeded: self)
	}
	
	@inlinable
	public var toUInt8: UInt8 {
		.init(truncatingIfNeeded: self)
	}
	
	//MARK: Floating Point Conversions
	
	@inlinable
	public var toFloat: Float {
		.init(self)
	}
	
	@inlinable
	public var toDouble: Double {
		.init(self)
	}
	
}
