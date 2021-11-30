//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Cursor

public struct Cursor {
	
	//MARK: Properties
	
	/// Check if cursor is visible
	@inlinable public var isVisible: Bool {
		!IsCursorHidden()
	}
	
	/// Check if cursor is not visible
	@inlinable public var isHidden: Bool {
		IsCursorHidden()
	}
	
	/// Check if cursor is on the screen
	@inlinable public var isOnScreen: Bool {
		IsCursorOnScreen()
	}
	
	//MARK: Methods
	
	/// Shows cursor
	@inlinable public static func show() {
		ShowCursor()
	}
	
	/// Hides cursor
	@inlinable public static func hide() {
		HideCursor()
	}
	
	/// Enables cursor (unlock cursor)
	@inlinable public static func enable() {
		EnableCursor()
	}
	
	/// Disables cursor (lock cursor)
	@inlinable public static func disable() {
		DisableCursor()
	}
	
}
