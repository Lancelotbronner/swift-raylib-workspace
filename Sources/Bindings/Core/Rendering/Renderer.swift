//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Renderer

public struct Renderer {
	
	//MARK: Background
	
	@inlinable
	public static func clear(to color: Color) {
		ClearBackground(color)
	}
	
	//MARK: Commands
	
	public static func render(_ instructions: () -> Void) {
		BeginDrawing()
		instructions()
		EndDrawing()
	}
	
}
