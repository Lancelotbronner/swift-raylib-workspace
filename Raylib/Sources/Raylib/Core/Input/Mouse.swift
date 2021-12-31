//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Mouse

public struct Mouse {
	
	//MARK: Constants
	
	public static let left = MouseButton(MOUSE_BUTTON_LEFT)
	public static let right = MouseButton(MOUSE_BUTTON_RIGHT)
	public static let middle = MouseButton(MOUSE_BUTTON_MIDDLE)
	public static let side = MouseButton(MOUSE_BUTTON_SIDE)
	public static let extra = MouseButton(MOUSE_BUTTON_EXTRA)
	public static let backward = MouseButton(MOUSE_BUTTON_BACK)
	public static let forward = MouseButton(MOUSE_BUTTON_FORWARD)
	
	//MARK: Computed Properties
	
	@inlinable public static var x: Int {
		get { GetMouseX().toInt }
		set { SetMousePosition(newValue.toInt32, GetMouseY()) }
	}
	
	@inlinable public static var y: Int {
		get { GetMouseY().toInt }
		set { SetMousePosition(GetMouseX(), newValue.toInt32) }
	}
	
	@inlinable public static var position: Vector2f {
		get { GetMousePosition().toSwift }
		set { SetMousePosition(newValue.x.toInt32, newValue.y.toInt32) }
	}
	
	@inlinable public static var delta: Vector2f {
		GetMouseDelta().toSwift
	}
	
	@inlinable public static var wheel: Float {
		GetMouseWheelMove()
	}
	
	//MARK: Methods
	
	@inlinable public static func offset(by value: Vector2f) {
		SetMouseOffset(value.x.toInt32, value.y.toInt32)
	}
	
	@inlinable public static func scale(to value: Vector2f) {
		SetMouseScale(value.x, value.y)
	}
	
	@inlinable public static func set(cursor: MouseCursor) {
		SetMouseCursor(cursor.toRaylib.toInt32)
	}
	
}

//MARK: - Mouse Cursor


public enum MouseCursor {
	
	//MARK: Cases
	
	/// Default pointer shape
	case `default`
	
	/// The operation-not-allowed shape
	case forbidden
	
	/// Arrow shape
	case arrow
	
	/// Text writing cursor shape
	case text
	
	/// Cross shape
	case crosshair
	
	/// Pointing hand cursor
	case pointingHand
	
	/// The omni-directional resize/move cursor shape
	case resize
	
	/// Vertical resize/move arrow shape
	case resizeNS
	
	/// Horizontal resize/move arrow shape
	case resizeWE
	
	/// The top-right to bottom-left diagonal resize/move arrow shape
	case resizeNESW
	
	/// Top-left to bottom-right diagonal resize/move arrow shape
	case resizeNWSE
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: UInt32 {
		switch self {
		case .default: return MOUSE_CURSOR_DEFAULT.rawValue
		case .forbidden: return MOUSE_CURSOR_NOT_ALLOWED.rawValue
		case .arrow: return MOUSE_CURSOR_ARROW.rawValue
		case .text: return MOUSE_CURSOR_IBEAM.rawValue
		case .crosshair: return MOUSE_CURSOR_CROSSHAIR.rawValue
		case .pointingHand: return MOUSE_CURSOR_POINTING_HAND.rawValue
		case .resize: return MOUSE_CURSOR_RESIZE_ALL.rawValue
		case .resizeNS: return MOUSE_CURSOR_RESIZE_NS.rawValue
		case .resizeWE: return MOUSE_CURSOR_NOT_ALLOWED.rawValue
		case .resizeNESW: return MOUSE_CURSOR_RESIZE_NESW.rawValue
		case .resizeNWSE: return MOUSE_CURSOR_RESIZE_NWSE.rawValue
		}
	}
	
}
