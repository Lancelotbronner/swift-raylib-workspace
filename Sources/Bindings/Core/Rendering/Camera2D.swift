//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Camera 2D

public typealias Camera2D = CRaylib.Camera2D

extension Camera2D {
	
	//MARK: Initialization
	
	public init(at position: Vector2f, offsetBy offset: Vector2f = Window.size / 2, rotation: Float = 0, zoom: Float = 1) {
		self.init(offset: position, target: offset, rotation: rotation, zoom: zoom)
	}
	
	//MARK: Methods
	
	public func toScreen(world position: Vector2f) -> Vector2f {
		GetWorldToScreen2D(position, self)
	}
	
	public func toWorld(screen position: Vector2f) -> Vector2f {
		GetScreenToWorld2D(position, self)
	}
	
	public func render(_ commands: () -> Void) {
		BeginMode2D(self)
		commands()
		EndMode2D()
	}
	
}
