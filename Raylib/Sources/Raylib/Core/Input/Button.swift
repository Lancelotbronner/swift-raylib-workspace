//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

//MARK: - Button

public protocol Button {
	
	/// Wether the button is currently pressed
	var isPressed: Bool { get }
	
	/// Wether the button was released this frame
	var isReleased: Bool { get }
	
	/// Wether the button was pushed down this frame
	var isDown: Bool { get }
	
	/// Wether the button was pushed up this frame
	var isUp: Bool { get }
	
}
