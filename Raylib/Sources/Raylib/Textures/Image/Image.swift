//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Image

public protocol Image {
	
	var toRaylib: CRaylib.Image { get }
	
}

extension Image {
	
	//MARK: Computed Properties
	
	@inlinable public var width: Int {
		toRaylib.width.toInt
	}
	
	@inlinable public var height: Int {
		toRaylib.height.toInt
	}
	
	@inlinable public var size: Vector2f {
		.init(toRaylib.width.toFloat, toRaylib.height.toFloat)
	}
	
	@inlinable public var mipmaps: Int {
		toRaylib.mipmaps.toInt
	}
	
	@inlinable public var format: PixelFormat {
		PixelFormat(raylib: toRaylib.format)
	}
	
	//MARK: Methods
	
	/// Upload to GPU
	@inlinable public func convertToTexture() -> Texture {
		LoadTextureFromImage(toRaylib).toManaged
	}
	
}

//MARK: - Raylib Integration

extension CRaylib.Image: MemoryManageable {
	
	@inlinable public static func unload(instance: CRaylib.Image) {
		UnloadImage(instance)
	}
	
}

extension Unmanaged: Image where Subject == CRaylib.Image {
	@inlinable public var toRaylib: Subject { underlying }
}

extension Managed: Image where Subject == CRaylib.Image {
	@inlinable public var toRaylib: Subject { underlying }
}

