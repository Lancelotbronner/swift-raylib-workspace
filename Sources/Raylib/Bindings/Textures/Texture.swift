//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import CRaylib
import Foundation

//MARK: - Texture

public final class Texture {
	
	//MARK: Properties
	
	internal var underlying: CRaylib.Texture
	
	//MARK: Computed Properties
	
	public var width: Int {
		underlying.width.toInt
	}
	
	public var height: Int {
		underlying.height.toInt
	}
	
	public var size: Vector2f {
		.init(underlying.width.toFloat, underlying.height.toFloat)
	}
	
	//MARK: Initialization
	
	public init(_ path: String) {
		underlying = LoadTexture(path)
	}
	
	public convenience init(_ path: String, from bundle: Bundle) {
		self.init("\(bundle.resourcePath ?? bundle.bundlePath)/\(path)")
	}
	
	deinit {
		UnloadTexture(underlying)
	}
	
}
