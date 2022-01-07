//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-06.
//

import CRaylib

public struct Image {
	
	//MARK: Properties
	
	@usableFromInline var implementation: ImplementationOfImage
	
	//MARK: Computed Properties
	
	@inlinable public var width: Int {
		implementation.raylib.width.toInt
	}
	
	@inlinable public var height: Int {
		implementation.raylib.height.toInt
	}
	
	@inlinable public var size: Vector2f {
		Vector2f(implementation.raylib.width.toFloat, implementation.raylib.height.toFloat)
	}
	
	@inlinable public var mipmaps: Int {
		implementation.raylib.mipmaps.toInt
	}
	
	@inlinable public var format: PixelFormat {
		PixelFormat(raylib: implementation.raylib.format)
	}
	
	//MARK: Initialization
	
	@usableFromInline init(_ implementation: ImplementationOfImage) {
		self.implementation = implementation
	}
	
	//	/// Create an image from text (default font)
	//	@inlinable public init(of text: String, size: Int, color: Color) {
	//
	//	}
	
	//MARK: Conversion Methods
	
	/// Upload to GPU
	@inlinable public func convertToTexture() -> Texture {
		LoadTextureFromImage(implementation.raylib).toManaged
	}
	
	//	/// Convert image data to desired format
	//	@inlinable public func convert(to format: PixelFormat) {
	//
	//	}
	
	//MARK: Copy Methods
	
	/// Create an image duplicate (useful for transformations)
	@inlinable public func copy() -> Image {
		ImageCopy(implementation.raylib).toManaged.toSwift
	}
	
	/// Create an image duplicate (useful for transformations)
	@inlinable public func copy(_ area: Rectangle, into other: Image) -> Image {
		ImageCopy(implementation.raylib).toManaged.toSwift
	}
	
	//MARK: Reading Methods
	
	/// Create an image from another image piece
	@inlinable public func sub(_ area: Rectangle) -> Image {
		ImageFromImage(implementation.raylib, area.toRaylib).toManaged.toSwift
	}
	
}

