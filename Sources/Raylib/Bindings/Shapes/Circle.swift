//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

//MARK: - Circle

public struct Circle {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var radius: Float
	
	//MARK: Computed Properties
	
	@inlinable
	public var diameter: Float {
		radius * 2
	}
	
	//MARK: Initialization
	
	@inlinable
	public init(at position: Vector2f, radius: Float) {
		self.position = position
		self.radius = radius
	}
	
	@inlinable
	public init(at x: Float, _ y: Float, radius: Float) {
		self.init(at: Vector2f(x, y), radius: radius)
	}
	
}
