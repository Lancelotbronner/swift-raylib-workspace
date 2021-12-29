//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

import CRaylib

//MARK: - Text Defaults

extension Renderer {
	
	//MARK: Computed Properties
	
	public static var textSize: Int {
		get { currentTextSize }
		set { currentTextSize = newValue }
	}
	
	public static var textAlignment: TextAlignment {
		get { currentTextAlignment }
		set { currentTextAlignment = newValue }
	}
	
	public static var textColor: Color {
		get { currentTextColor }
		set { currentTextColor = newValue }
	}
	
}

//MARK: Stores

private var currentTextSize: Int = 20
private var currentTextAlignment = TextAlignment.left
private var currentTextColor = Color.black

//MARK: - Text Alignment

public enum TextAlignment {
	case left
	case center
	case right
	
	@usableFromInline func offset(of text: String, at size: Int) -> Int {
		switch self {
		case .left: return 0
		case .center: return Text.measure(text, size: size) / 2
		case .right: return -Text.measure(text, size: size)
		}
	}
}
