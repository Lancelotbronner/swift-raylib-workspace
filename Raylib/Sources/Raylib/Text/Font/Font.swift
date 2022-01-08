//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-08.
//

//MARK: - Font

public struct Font {
	
	//MARK: Properties
	
	@usableFromInline var implementation: ImplementationOfFont
	
	//MARK: Computed Properties
	
	//MARK: Initialization
	
	@usableFromInline init(_ implementation: ImplementationOfFont) {
		self.implementation = implementation
	}
	
}
