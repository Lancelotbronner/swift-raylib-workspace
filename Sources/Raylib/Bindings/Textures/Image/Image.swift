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
	
	@usableFromInline
	internal var store: CopyOnWrite<Store>
	
	//MARK: Computed Properties
	
	@_transparent
	public var width: Int {
		store.underlying.width.toInt
	}
	
	@_transparent
	public var height: Int {
		store.underlying.height.toInt
	}
	
	@_transparent
	public var size: Vector2f {
		.init(store.underlying.width.toFloat, store.underlying.height.toFloat)
	}
	
	@_transparent
	public var mipmaps: Int {
		store.underlying.mipmaps.toInt
	}
	
	// TODO: Pixel format enum
	
	@inlinable
	public var toTexture: Texture {
		.init(underlying: LoadTextureFromImage(store.underlying))
	}
	
	//MARK: Initialization
	
	@_transparent
	public init(underlying image: CRaylib.Image) {
		store = .init(.init(image))
	}
	
}
