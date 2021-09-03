//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import Engine
import CRaylib

//MARK: - Keyboard Button

public struct KeyboardButton: Button {
	
	//MARK: Constants
	
	public static let null = KeyboardButton(KEY_NULL)
	
	//MARK: Properties
	
	public let keycode: Int32
	
	//MARK: Computed Properties
	
	@inlinable
	public var isPressed: Bool {
		IsKeyPressed(keycode)
	}
	
	@inlinable
	public var isDown: Bool {
		IsKeyDown(keycode)
	}
	
	@inlinable
	public var isReleased: Bool {
		IsKeyReleased(keycode)
	}
	
	@inlinable
	public var isUp: Bool {
		IsKeyUp(keycode)
	}
	
	//MARK: Initialization
	
	@inlinable
	public init(_ keycode: Int32) {
		self.keycode = keycode
	}
	
	@inlinable
	public init(_ key: KeyboardKey) {
		keycode = key.rawValue.toInt32
	}
	
}
