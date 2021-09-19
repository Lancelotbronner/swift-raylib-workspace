//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-17.
//

import CRaylib

//MARK: - Store

extension Image {
	@usableFromInline
	internal final class Store: Copyable {
		
		//MARK: Properties
		
		@usableFromInline
		var underlying: CRaylib.Image
		
		//MARK: Initialization
		
		@usableFromInline
		init(_ value: CRaylib.Image) {
			underlying = value
		}
		
		deinit {
			UnloadImage(underlying)
		}
		
		//MARK: Methods
		
		@usableFromInline
		func copy() -> Self {
			.init(ImageCopy(underlying))
		}
		
	}
}
