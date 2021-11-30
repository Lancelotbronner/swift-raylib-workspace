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
	@usableFromInline internal var underlying: CRaylib.Shader
	
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
	
	/// Get uniform location
	@inlinable public func uniform<T>(_ name: String, of type: T.Type = T.self) -> Uniform<T> {
		Uniform(get: name, in: self)
	}
	
	// TODO: Make attribute wrapper
	
	/// Get attributes location
	@inlinable public func attribute(_ name: String) -> Int {
		GetShaderLocationAttrib(underlying, name).toInt
	}
	
}

//MARK: - Builtin Uniforms

public struct BuiltinUniform {
	
	//MARK: Constants
	
	public static let position = BuiltinUniform(0)
	
	//MARK: Properties
	
	@usableFromInline internal let index: Int
	
	//MARK: Initialization
	
	internal init(_ index: Int) {
		self.index = index
	}
	
}

/*
 typedef enum {
 SHADER_LOC_VERTEX_POSITION = 0, // Shader location: vertex attribute: position
 SHADER_LOC_VERTEX_TEXCOORD01,   // Shader location: vertex attribute: texcoord01
 SHADER_LOC_VERTEX_TEXCOORD02,   // Shader location: vertex attribute: texcoord02
 SHADER_LOC_VERTEX_NORMAL,       // Shader location: vertex attribute: normal
 SHADER_LOC_VERTEX_TANGENT,      // Shader location: vertex attribute: tangent
 SHADER_LOC_VERTEX_COLOR,        // Shader location: vertex attribute: color
 SHADER_LOC_MATRIX_MVP,          // Shader location: matrix uniform: model-view-projection
 SHADER_LOC_MATRIX_VIEW,         // Shader location: matrix uniform: view (camera transform)
 SHADER_LOC_MATRIX_PROJECTION,   // Shader location: matrix uniform: projection
 SHADER_LOC_MATRIX_MODEL,        // Shader location: matrix uniform: model (transform)
 SHADER_LOC_MATRIX_NORMAL,       // Shader location: matrix uniform: normal
 SHADER_LOC_VECTOR_VIEW,         // Shader location: vector uniform: view
 SHADER_LOC_COLOR_DIFFUSE,       // Shader location: vector uniform: diffuse color
 SHADER_LOC_COLOR_SPECULAR,      // Shader location: vector uniform: specular color
 SHADER_LOC_COLOR_AMBIENT,       // Shader location: vector uniform: ambient color
 SHADER_LOC_MAP_ALBEDO,          // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
 SHADER_LOC_MAP_METALNESS,       // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
 SHADER_LOC_MAP_NORMAL,          // Shader location: sampler2d texture: normal
 SHADER_LOC_MAP_ROUGHNESS,       // Shader location: sampler2d texture: roughness
 SHADER_LOC_MAP_OCCLUSION,       // Shader location: sampler2d texture: occlusion
 SHADER_LOC_MAP_EMISSION,        // Shader location: sampler2d texture: emission
 SHADER_LOC_MAP_HEIGHT,          // Shader location: sampler2d texture: height
 SHADER_LOC_MAP_CUBEMAP,         // Shader location: samplerCube texture: cubemap
 SHADER_LOC_MAP_IRRADIANCE,      // Shader location: samplerCube texture: irradiance
 SHADER_LOC_MAP_PREFILTER,       // Shader location: samplerCube texture: prefilter
 SHADER_LOC_MAP_BRDF             // Shader location: sampler2d texture: brdf
 } ShaderLocationIndex;
 
 #define SHADER_LOC_MAP_DIFFUSE      SHADER_LOC_MAP_ALBEDO
 #define SHADER_LOC_MAP_SPECULAR     SHADER_LOC_MAP_METALNESS
 
 // Shader attribute data types
 typedef enum {
 SHADER_ATTRIB_FLOAT = 0,        // Shader attribute type: float
 SHADER_ATTRIB_VEC2,             // Shader attribute type: vec2 (2 float)
 SHADER_ATTRIB_VEC3,             // Shader attribute type: vec3 (3 float)
 SHADER_ATTRIB_VEC4              // Shader attribute type: vec4 (4 float)
 } ShaderAttributeDataType;
 */
