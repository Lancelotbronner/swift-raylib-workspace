//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Polygon

public struct Polygon {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var sides: Int
	public var radius: Float
	public var rotation: Angle
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, sides: Int, radius: Float, rotation: Angle = .zero) {
		self.position = position
		self.sides = sides
		self.radius = radius
		self.rotation = rotation
	}
	
}
