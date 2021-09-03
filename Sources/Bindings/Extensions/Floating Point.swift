//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

extension BinaryFloatingPoint {
	
	//MARK: Floating Point Conversions
	
	@inlinable
	public var toFloat: Float {
		.init(self)
	}
	
	@inlinable
	public var toDouble: Double {
		.init(self)
	}
	
	//MARK: Integer Conversions
	
	@inlinable
	public var toInt: Int {
		.init(self)
	}
	
	@inlinable
	public var toUInt: UInt {
		.init(self)
	}
	
	@inlinable
	public var toInt32: Int32 {
		.init(self)
	}
	
	@inlinable
	public var toUInt32: UInt32 {
		.init(self)
	}
	
	@inlinable
	public var toInt8: Int8 {
		.init(self)
	}
	
	@inlinable
	public var toUInt8: UInt8 {
		.init(self)
	}
	
}
