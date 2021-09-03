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
	public static var size: Vector2 {
		.init(GetScreenWidth().toFloat, GetScreenHeight().toFloat)
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
	
	//MARK: Deinitialization
	
	@inlinable
	public static func close() {
		CloseWindow()
	}
	
	@inlinable
	public static func close(on key: KeyboardButton) {
		SetExitKey(key.keycode)
	}
	
	//MARK: Methods
	
	@inlinable
	public static func resize(to width: Int, by height: Int) {
		SetWindowSize(width.toInt32, height.toInt32)
	}
	
}
