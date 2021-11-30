//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Allocator

public struct Allocator {
	
	//MARK: Methods
	
	/// Internal memory allocator
	public static func allocate(size: Int) -> UnsafeMutableRawPointer {
		MemAlloc(size.toInt32)
	}
	
	/// Internal memory reallocator
	public static func reallocate(_ pointer: UnsafeMutableRawPointer, size: Int) {
		MemRealloc(pointer, size.toInt32)
	}
	
	/// Internal memory free
	public static func free(_ pointer: UnsafeMutableRawPointer) {
		MemFree(pointer)
	}
	
}
