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
	
	/// The directory's path
	public let path: Path
	
	//MARK: Computed Properties
	
	/// Check if a directory path exists
	@inlinable public var exists: Bool {
		path.isDirectory
	}
	
	/// Get previous directory path for a given path
	@inlinable public var parent: Directory {
		.init(at: path.parent)
	}
	
	/// Retrieves the subpaths of this directory
	@inlinable public var contents: [Path] {
		var count: Int32 = 0
		let pointer = GetDirectoryFiles(path.underlying, &count)
		let buffer = UnsafeBufferPointer(start: pointer?.advanced(by: 2), count: count.toInt - 2)
		let files = buffer.compactMap { pointer in
			pointer.map { Path(at: $0.toString) }
		}
		ClearDirectoryFiles()
		return files
	}
	
	//MARK: Initialization
	
	@usableFromInline init(at path: Path) {
		self.path = path
	}
	
	//MARK: Methods
	
	/// Change working directory
	@inlinable public func useAsWorkingDirectory() throws {
		ChangeDirectory(path.underlying)
		// TODO: Handle error
	}
	
	/// Point to a file within the directory
	@inlinable public func file(_ filename: String) -> File {
		path[filename].file
	}
	
	/// Point to a subdirectory within the directory
	@inlinable public func directory(_ filename: String) -> Directory {
		path[filename].directory
	}
	
}
