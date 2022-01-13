//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-12.
//

import CRaylib

//MARK: - Renderer

public struct Renderer2D {
	
	//MARK: Computed Properties
	
	@inlinable public var wire: WireRenderer2D {
		WireRenderer2D()
	}
	
	//MARK: Initialization
	
	@usableFromInline init() { }
	
	//MARK: Methods
	
	/// Set background color (framebuffer clear color)
	@inlinable public func clear(to color: Color) {
		ClearBackground(color.toRaylib)
	}
	
}

//MARK: - Wire Renderer

public struct WireRenderer2D {
	
	//MARK: Initialization
	
	@usableFromInline init() { }
	
}
