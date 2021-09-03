//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

//MARK: - Button

public protocol Button {
	
	var keycode: Int32 { get }
	
	var isPressed: Bool { get }
	var isReleased: Bool { get }
	var isDown: Bool { get }
	var isUp: Bool { get }
	
	init(_ keycode: Int32)
	
}
