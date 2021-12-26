//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-25.
//

import CRaylib

//MARK: - Uniform

public protocol UniformConvertible {
	
	/// Writes a value for the specified shader at the specified index
	static func write(_ value: Self, at index: Int32, to shader: Shader)
	
}

public struct Uniform<Scalar: UniformConvertible> {
	
	//MARK: Properties
	
	@usableFromInline let shader: Shader
	@usableFromInline let index: Int32
	
	//MARK: Initialization
	
	@usableFromInline init(at index: Int32, in shader: Shader) {
		self.shader = shader
		self.index = index
	}
	
	@usableFromInline init(get name: String, in shader: Shader) {
		let index = GetShaderLocation(shader.underlying, name)
		self.init(at: index, in: shader)
	}
	
	//MARK: Methods
	
	/// Writes the value to the shader's uniform
	///
	/// - Parameter value: The value to write
	@inlinable public func write(_ value: Scalar) {
		Scalar.write(value, at: index, to: shader)
	}
	
	@inlinable public func identify(as builtin: BuiltinUniform) {
		shader.underlying.locs[builtin.index] = index
	}
	
}

//MARK: - Uniform Conformances

internal protocol BuiltinValueUniform: UniformConvertible {
	static var type: Int32 { get }
}

extension BuiltinValueUniform {
	
	@inlinable public static func write(_ value: Self, at index: Int32, to shader: Shader) {
		withUnsafePointer(to: value) { pointer in
			SetShaderValue(shader.underlying, index, pointer, type)
		}
	}
	
}

internal protocol BuiltinCollectionUniform: UniformConvertible, Collection {
	static var type: Int32 { get }
}

extension BuiltinCollectionUniform {
	
	@inlinable public static func write(_ value: Self, at index: Int32, to shader: Shader) {
		withUnsafePointer(to: value) { pointer in
			SetShaderValueV(shader.underlying, index, pointer, type, value.count.toInt32)
		}
	}
	
}

extension Collection where Element: BuiltinValueUniform {
	static var type: Int32 { Element.type }
}

//MARK: - Uniform Data Types

extension Float: BuiltinValueUniform {
	static var type: Int32 { SHADER_UNIFORM_FLOAT.rawValue.toInt32 }
}

extension Vector2f: BuiltinValueUniform, UniformConvertible {
	static var type: Int32 { SHADER_UNIFORM_VEC2.rawValue.toInt32 }
}

extension Vector3f: BuiltinValueUniform {
	static var type: Int32 { 2 }
}

//extension Vector4f: BuiltinValueUniform {
//	static var type: Int32 { 3 }
//}

extension Int32: BuiltinValueUniform {
	static var type: Int32 { 4 }
}

//extension Vector2i: UniformConvertible {
//	public static var type: Int32 { 5 }
//}

//extension Vector3i: UniformConvertible {
//	public static var type: Int32 { 6 }
//}

//extension Vector4i: UniformConvertible {
//	public static var type: Int32 { 7 }
//}

//extension Sampler2D: UniformConvertible {
//	public static var type: Int32 { 78}
//}

// TODO: Matrix & Texture uniform convertible
// void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
// void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);

extension Array: BuiltinCollectionUniform, UniformConvertible where Element: BuiltinValueUniform { }
extension ContiguousArray: BuiltinCollectionUniform, UniformConvertible where Element: BuiltinValueUniform { }
extension Set: BuiltinCollectionUniform, UniformConvertible where Element: BuiltinValueUniform { }
