//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Window

public struct Window {
	
	//MARK: Constants
	
	public static var background = Color.raywhite
	
	//MARK: Computed Properties
	
	@inlinable
	public static var isReady: Bool {
		IsWindowReady()
	}
	
	@inlinable
	public static var isFullscreen: Bool {
		IsWindowFullscreen()
	}
	
	@inlinable
	public static var isHidden: Bool {
		IsWindowHidden()
	}
	
	@inlinable
	public static var isMinimized: Bool {
		IsWindowMinimized()
	}
	
	@inlinable
	public static var isMaximized: Bool {
		IsWindowMinimized()
	}
	
	@inlinable
	public static var isFocused: Bool {
		IsWindowMinimized()
	}
	
	@inlinable
	public static var x: Int {
		get { position.x.toInt }
		set { position = Vector2f(newValue.toFloat, position.y) }
	}
	
	@inlinable
	public static var y: Int {
		get { position.y.toInt }
		set { position = Vector2f(position.x, newValue.toFloat) }
	}
	
	@inlinable
	public static var position: Vector2f {
		get { GetWindowPosition() }
		set { SetWindowPosition(newValue.x.toInt32, newValue.y.toInt32) }
	}

	@inlinable
	public static var width: Int {
		get { GetScreenWidth().toInt }
		set { SetWindowSize(newValue.toInt32, GetScreenHeight()) }
	}
	
	@inlinable
	public static var height: Int {
		get { GetScreenHeight().toInt }
		set { SetWindowSize(GetScreenWidth(), newValue.toInt32) }
	}
	
	@inlinable
	public static var size: Vector2f {
		get { Vector2f(GetScreenWidth().toFloat, GetScreenHeight().toFloat) }
		set { SetWindowSize(newValue.x.toInt32, newValue.y.toInt32) }
	}
	
	@inlinable
	public static var scaleDPI: Vector2f {
		GetWindowScaleDPI()
	}
	
	internal static var native: UnsafeMutableRawPointer {
		GetWindowHandle()
	}
	
	//MARK: Initialization
	
	@inlinable
	public static func create(_ title: String) {
		InitWindow(0, 0, title)
	}
	
	@inlinable
	public static func create(_ width: Int, by height: Int, title: String) {
		InitWindow(width.toInt32, height.toInt32, title)
	}
	
	//MARK: Methods
	
	@inlinable
	public static func resize(to width: Int, by height: Int) {
		SetWindowSize(width.toInt32, height.toInt32)
	}
	
	@inlinable
	public static func place(at x: Int, _ y: Int) {
		SetWindowPosition(x.toInt32, y.toInt32)
	}
	
	@inlinable
	public static func rename(to title: String) {
		SetWindowTitle(title)
	}
	
	public static func assign(to monitor: Monitor) {
		SetWindowMonitor(monitor.id)
	}
	
}
