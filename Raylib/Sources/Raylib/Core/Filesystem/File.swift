//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - File

public struct File {
	
	//MARK: Properties
	
	public let path: String
	
	//MARK: Computed Properties
	
	/// Check if file exists
	@inlinable public var exists: Bool {
		FileExists(path)
	}
	
	/// Get filename
	@inlinable public var filename: String {
		GetFileName(path).toString
	}
	
	/// Get filename string without extension
	@inlinable public var name: String {
		GetFileNameWithoutExt(path).toString
	}
	
	/// Get extension for a filename string (includes dot: '.png')
	@inlinable public var `extension`: String {
		GetFileExtension(path).toString
	}
	
	/// Get file modification time (last write time)
	@inlinable public var modification: Int {
		GetFileModTime(path)
	}
	
	@inlinable public var directory: Directory {
		Directory(at: GetDirectoryPath(path).toString)
	}
	
	/// Load text data from file
	@inlinable public var text: String? {
		guard let pointer = LoadFileText(path) else {
			return nil
		}
		defer { UnloadFileText(pointer) }
		return pointer.toString
	}
	
	///  Load file data as byte array
	@inlinable public var data: [UInt8]? {
		var count: UInt32 = 0
		guard let pointer = LoadFileData(path, &count) else {
			return nil
		}
		defer { UnloadFileData(pointer) }
		return Array(UnsafeMutableBufferPointer(start: pointer, count: count.toInt))
	}
	
	/// Load file as image
	@inlinable public var image: Image {
		Image(underlying: LoadImage(path.description))
	}
	
	/// Load file as texture
	@inlinable public var texture: Texture {
		LoadTexture(path.description).managed
	}
	
	//MARK: Initialization
	
	@usableFromInline init(at path: Path) {
		self.path = path.description
	}
	
	@usableFromInline init(at path: String) {
		self.path = path
	}
	
	//MARK: Methods
	
	/// Check file extension (including point: .png, .wav)
	@inlinable public func `is`(extension ext: String) -> Bool {
		IsFileExtension(path, ext)
	}
	
	/// Save text data to file
	@inlinable public func write(_ text: String) throws {
		_ = text.withCString { pointer in
			SaveFileText(path, UnsafeMutablePointer(mutating: pointer))
		}
		// TODO: Handle error
	}
	
	/// Save data to file
	@inlinable public func write(_ data: [UInt8]) throws {
		_ = data.withUnsafeBytes { buffer in
			SaveFileData(path, UnsafeMutableRawPointer(mutating: buffer.baseAddress), buffer.count.toUInt32)
		}
		// TODO: Handle error
	}
	
}
