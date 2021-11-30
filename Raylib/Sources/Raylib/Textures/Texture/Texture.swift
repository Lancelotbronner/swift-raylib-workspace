//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import CRaylib


//MARK: - Texture

public final class Texture {
	
	//MARK: Properties
	
	@usableFromInline
	internal var underlying: CRaylib.Texture
	
	//MARK: Computed Properties
	
	@inlinable
	public var width: Int {
		underlying.width.toInt
	}
	
	@inlinable
	public var height: Int {
		underlying.height.toInt
	}
	
	@inlinable
	public var size: Vector2f {
		.init(underlying.width.toFloat, underlying.height.toFloat)
	}
	
	@inlinable
	public var toImage: Image {
		.init(underlying: LoadImageFromTexture(underlying))
	}
	
	//MARK: Initialization
	
	@inlinable
	public init(underlying texture: CRaylib.Texture) {
		underlying = texture
	}
	
	@inlinable
	public init(_ path: String) {
		underlying = LoadTexture(path)
	}
	
	@inlinable
	public convenience init(_ path: String, from bundle: Bundle) {
		self.init("\(bundle.resourcePath ?? bundle.bundlePath)/\(path)")
	}
	
	deinit {
		UnloadTexture(underlying)
	}
	
	//MARK: Methods
	
	@inlinable
	public func update(with data: Image) {
		UpdateTexture(underlying, data.store.underlying.data)
	}
	
	@inlinable
	public func update(area: Rectangle, with data: Image) {
		UpdateTextureRec(underlying, area, data.store.underlying.data)
	}
	
}
