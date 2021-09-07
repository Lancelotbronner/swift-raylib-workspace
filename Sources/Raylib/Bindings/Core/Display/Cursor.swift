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
	
	@inlinable
	public var isVisible: Bool {
		!IsCursorHidden()
	}
	
	@inlinable
	public var isHidden: Bool {
		!IsCursorHidden()
	}
	
	@inlinable
	public var isOnScreen: Bool {
		IsCursorOnScreen()
	}
	
	//MARK: Methods
	
	@inlinable
	public static func show() {
		ShowCursor()
	}
	
	@inlinable
	public static func hide() {
		HideCursor()
	}
	
	@inlinable
	public static func enable() {
		EnableCursor()
	}
	
	@inlinable
	public static func disable() {
		DisableCursor()
	}
	
}
