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
	@inlinable public static var files: [String] {
		var count: Int32 = 0
		guard let tmp = GetDroppedFiles(&count) else { return [] }
		return UnsafeMutableBufferPointer(start: tmp, count: count.toInt)
			.lazy
			.compactMap { $0?.toString }
	}
	
	/// Clear dropped files paths buffer (free memory)
	@inlinable public static func clear() {
		ClearDroppedFiles()
	}
	
}
