//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

//MARK: - C String

extension UnsafePointer where Pointee == CChar {
	
	@_transparent public var toString: String {
		String(cString: self)
	}
	
}

extension UnsafeMutablePointer where Pointee == CChar {
	
	@_transparent public var toString: String {
		String(cString: self)
	}
	
}
