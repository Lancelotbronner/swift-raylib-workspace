//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

//MARK: - Sector

public struct Sector {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var radius: Float
	public var start: Angle
	public var end: Angle
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, radius: Float, from start: Angle, to end: Angle) {
		self.position = position
		self.radius = radius
		self.start = start
		self.end = end
	}
	
}
