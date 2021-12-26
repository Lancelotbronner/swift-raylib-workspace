//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Path

public struct Path: LosslessStringConvertible {
	
	//MARK: Properties
	
	public let description: String
	
	//MARK: Initialization
	
	public init(_ description: String) {
		self.description = description
	}
	
}

//MARK: - Literal

extension Path: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
	
	public init(stringLiteral value: String) {
		self.init(value)
	}
	
}
