//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

//MARK: - Triangle

public struct Triangle {
	
	//MARK: Properties
	
	public var a: Vector2f
	public var b: Vector2f
	public var c: Vector2f
	
	//MARK: Initialization
	
	@inlinable
	public init(_ a: Vector2f, _ b: Vector2f, _ c: Vector2f) {
		self.a = a
		self.b = b
		self.c = c
	}
	
}
