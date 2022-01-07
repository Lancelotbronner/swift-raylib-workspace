//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Shader

public struct Shader {
	
	//MARK: Properties
	
	@CopyValueOnWrite
	@usableFromInline var underlying: CRaylib.Shader
	
	//MARK: Computed Properties
	
	//MARK: Initialization
	
	private init(underlying shader: CRaylib.Shader) {
		_underlying = CopyValueOnWrite(shader, free: UnloadShader)
	}
	
	/// Load shader from files and bind default locations
	///
	/// - Parameters:
	///   - vertex: The filename of the vertex shader
	///   - fragment: The filename of the fragment shader
	public init(path vertex: String, _ fragment: String) {
		self.init(underlying: LoadShader(vertex, fragment))
	}
	
	/// Load shader from strings and bind default locations
	/// - Parameters:
	///   - vertex: The code for the vertex shader
	///   - fragment: The code for the fragment shader
	public init(memory vertex: String, _ fragment: String) {
		self.init(underlying: LoadShaderFromMemory(vertex, fragment))
	}
	
	//MARK: Methods
	
	/// Get uniform
	@inlinable public func uniform<T>(_ name: String, of type: T.Type = T.self) -> Uniform<T> {
		Uniform(get: name, in: self)
	}
	
	/// Bind builtin uniform to a shader variable
	@inlinable public func bind<T>(_ builtin: BuiltinUniform<T>, to variable: String) -> Uniform<T> {
		let tmp = uniform(variable, of: T.self)
		underlying.locs[builtin.index] = tmp.index
		return tmp
	}
	
	/// BeginShaderMode; EndShaderMode
	@inlinable public func render(draw: () -> Void) {
		BeginShaderMode(underlying)
		draw()
		EndShaderMode()
	}
	
	// TODO: Make attribute wrapper
	
	/// Get attributes location
	@inlinable public func attribute(_ name: String) -> Int {
		GetShaderLocationAttrib(underlying, name).toInt
	}
	
}
