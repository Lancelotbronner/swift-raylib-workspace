//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

import CRaylib

//MARK: - Image Store

extension Image {
	@usableFromInline
	final class Store: Copyable {
		
		//MARK: Properties
		
		@usableFromInline
		var underlying: CRaylib.Image
		
		//MARK: Initialization
		
		@inlinable
		init(_ raylib: CRaylib.Image) {
			underlying = raylib
		}
		
		deinit {
			UnloadImage(underlying)
		}
		
		//MARK: Methods
		
		@inlinable
		func copy() -> Store {
			.init(ImageCopy(underlying))
		}
		
	}
}
