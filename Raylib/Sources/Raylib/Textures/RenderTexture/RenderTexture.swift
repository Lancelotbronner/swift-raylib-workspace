//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Render Texture

public final class RenderTexture {
	
	//MARK: Properties
	
	@usableFromInline var underlying: CRaylib.RenderTexture
	
	//MARK: Computed Properties
	
	@inlinable public var depth: Texture {
		underlying.depth.unmanaged
	}
	
	@inlinable public var texture: Texture {
		underlying.texture.unmanaged
	}
	
	//MARK: Initialization
	
	@inlinable public convenience init(size width: Int, by height: Int) {
		self.init(underlying: LoadRenderTexture(width.toInt32, height.toInt32))
	}
	
	@inlinable public convenience init(size: Vector2f) {
		self.init(underlying: LoadRenderTexture(size.x.toInt32, size.y.toInt32))
	}
	
	@inlinable public init(underlying texture: CRaylib.RenderTexture) {
		underlying = texture
	}
	
	deinit {
		UnloadRenderTexture(underlying)
	}
	
	//MARK: Methods
	
	@inlinable public func render(_ block: () -> Void) {
		BeginTextureMode(underlying)
		block()
		EndTextureMode()
	}
	
}
