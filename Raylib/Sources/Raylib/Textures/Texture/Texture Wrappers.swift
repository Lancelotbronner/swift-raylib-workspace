//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import CRaylib

//MARK: - Unmanaged Texture

public struct UnmanagedTexture: Texture {
	
	//MARK: Properties
	
	@usableFromInline let underlying: CRaylib.Texture
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: CRaylib.Texture {
		underlying
	}
	
	//MARK: Initialization
	
	@usableFromInline init(underlying raylib: CRaylib.Texture) {
		underlying = raylib
	}
	
}

//MARK: - Managed Texture

public final class ManagedTexture: Texture {
	
	//MARK: Properties
	
	@usableFromInline let underlying: CRaylib.Texture
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: CRaylib.Texture {
		underlying
	}
	
	//MARK: Initialization
	
	@usableFromInline init(underlying raylib: CRaylib.Texture) {
		underlying = raylib
	}
	
	deinit {
		UnloadTexture(underlying)
	}
	
}

//MARK: - Raylib Integration

extension CRaylib.Texture {
	
	@inlinable public var managed: Texture {
		ManagedTexture(underlying: self)
	}
	
	@inlinable public var unmanaged: Texture {
		UnmanagedTexture(underlying: self)
	}
	
}
