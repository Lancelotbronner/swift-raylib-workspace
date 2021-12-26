//
//  File 2.swift
//  File 2
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Directory

public struct Directory {
	
	//MARK: Properties
	
	public let path: String
	
	//MARK: Computed Properties
	
	/// Check if a directory path exists
	@inlinable public var exists: Bool {
		DirectoryExists(path.description)
	}
	
	/// Get previous directory path for a given path
	@inlinable public var parent: Directory {
		Directory(at: GetPrevDirectoryPath(path.description).toString)
	}
	
	//MARK: Initialization
	
	@usableFromInline init(at path: Path) {
		self.path = path.description
	}
	
	@usableFromInline init(at path: String) {
		self.path = path
	}
	
	//MARK: Methods
	
	/// Change working directory
	@inlinable public func changeWorkingDirectory() throws {
		ChangeDirectory(path.description)
		// TODO: Handle error
	}
	
	/// Get filenames in a directory path
	@inlinable public func files() -> [File] {
		var count: Int32 = 0
		let pointer = GetDirectoryFiles(path.description, &count)
		let buffer = UnsafeMutableBufferPointer(start: pointer, count: count.toInt)
		return Array(IteratorSequence(FilesIterator(buffer)))
	}
	
}

//MARK: - Files Iterator

extension Directory {
	@usableFromInline struct FilesIterator: IteratorProtocol {
		var iterator: UnsafeMutableBufferPointer<UnsafeMutablePointer<CChar>?>.Iterator
		
		@usableFromInline init(_ buffer: UnsafeMutableBufferPointer<UnsafeMutablePointer<CChar>?>) {
			iterator = buffer.makeIterator()
		}
		
		@usableFromInline mutating func next() -> File? {
			if let pointer = iterator.next() {
				return File(at: Path(String(cString: pointer!)))
			}
			
			ClearDirectoryFiles()
			return nil
		}
		
	}
}
