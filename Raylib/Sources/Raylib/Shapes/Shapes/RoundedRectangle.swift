//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

//MARK: - Rounded Rectangle

public struct RoundedRectangle {
	
	//MARK: Properties
	
	public var rectangle: Rectangle
	public var cornerRadius: Float
	public var segments: Int
	
	//MARK: Initialization
	
	public init(round rectangle: Rectangle, by radius: Float, segments: Int = 0) {
		self.rectangle = rectangle
		self.cornerRadius = radius
		self.segments = segments
	}
	
}
