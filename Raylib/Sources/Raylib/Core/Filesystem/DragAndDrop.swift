//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import CRaylib

//MARK: - Drag & Drop

public struct DragAndDrop {
	
	//MARK: Computed Properties
	
	/// Check if a file has been dropped into window
	@inlinable public static var isDropped: Bool {
		IsFileDropped()
	}
	
	//MARK: Methods
	
	/// Check if a file has been dropped into window
	@inlinable public static var paths: [Path] {
		let files = LoadDroppedFiles()
		let result = UnsafeMutableBufferPointer(start: files.paths, count: files.count.toInt)
			.compactMap(\.?.toPath)
		UnloadDroppedFiles(files)
		return result
	}
	
}
