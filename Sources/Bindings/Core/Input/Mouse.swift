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
	
	@inlinable
	public static var x: Int {
		get { GetMouseX().toInt }
		set { SetMousePosition(newValue.toInt32, GetMouseY()) }
	}
	
	@inlinable
	public static var y: Int {
		get { GetMouseY().toInt }
		set { SetMousePosition(GetMouseX(), newValue.toInt32) }
	}
	
	@inlinable
	public static var position: Vector2f {
		get { GetMousePosition() }
		set { SetMousePosition(newValue.x.toInt32, newValue.y.toInt32) }
	}
	
	@inlinable
	public static var wheel: Float {
		GetMouseWheelMove()
	}
	
}
