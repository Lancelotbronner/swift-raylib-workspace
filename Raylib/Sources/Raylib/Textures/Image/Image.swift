//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Image

public struct Image {
	
	//MARK: Properties
	
	@CopyValueOnWrite
	@usableFromInline var underlying: CRaylib.Image
	
	//MARK: Computed Properties
	
	@_transparent public var width: Int {
		underlying.width.toInt
	}
	
	@_transparent public var height: Int {
		underlying.height.toInt
	}
	
	@_transparent public var size: Vector2f {
		.init(underlying.width.toFloat, underlying.height.toFloat)
	}
	
	@_transparent public var mipmaps: Int {
		underlying.mipmaps.toInt
	}
	
	// TODO: Pixel format enum
	
	@inlinable public var toTexture: Texture {
		LoadTextureFromImage(underlying).managed
	}
	
	//MARK: Initialization
	
	public init(underlying image: CRaylib.Image) {
		_underlying = CopyValueOnWrite(image, duplicate: ImageCopy, free: UnloadImage)
	}
	
}
