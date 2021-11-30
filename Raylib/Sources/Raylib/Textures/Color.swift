//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Color

public typealias Color = CRaylib.Color

extension Color {
	
	//MARK: Computed Properties
	
	public var value: UInt32 {
		ColorToInt(self).toUInt32
	}
	
	//MARK: Initialization
	
	public static func rgba(_ value: UInt32) -> Color {
		GetColor(value)
	}
	
	public static func rgb(_ r: UInt8, _ g: UInt8, _ b: UInt8, a: UInt8 = .max) -> Color {
		.init(r: r, g: g, b: b, a: a)
	}
	
	//MARK: Methods
	
	public func faded(to alpha: Float) -> Color {
		Fade(self, alpha)
	}
	
	public mutating func fade(to alpha: Float) {
		self = faded(to: alpha)
	}
	
}

//MARK: - Palette

extension Color {
	
	public static var lightGray: Color { .rgb(200, 200, 200) }
	public static var gray: Color { .rgb(130, 130, 130) }
	public static var darkGray: Color { .rgb(80, 80, 80) }
	public static var yellow: Color { .rgb(253, 249, 0) }
	public static var gold: Color { .rgb(253, 203, 0) }
	public static var orange: Color { .rgb(255, 161, 0) }
	public static var pink: Color { .rgb(255, 109, 194) }
	public static var red: Color { .rgb(230, 41, 55) }
	public static var maroon: Color { .rgb(190, 33, 55) }
	public static var green: Color { .rgb(0, 228, 48) }
	public static var lime: Color { .rgb(0, 158, 47) }
	public static var darkGreen: Color { .rgb(0, 117, 44) }
	public static var skyBlue: Color { .rgb(102, 191, 255) }
	public static var blue: Color { .rgb(0, 121, 241) }
	public static var darkBlue: Color { .rgb(0, 82, 172) }
	public static var purple: Color { .rgb(200, 122, 255) }
	public static var violet: Color { .rgb(135, 60, 190) }
	public static var darkPurple: Color { .rgb(112, 31, 126) }
	public static var beige: Color { .rgb(211, 176, 131) }
	public static var brown: Color { .rgb(127, 106, 79) }
	public static var darkBrown: Color { .rgb(76, 63, 47) }

	public static var white: Color { .rgb(255, 255, 255) }
	public static var black: Color { .rgb(0, 0, 0) }
	public static var blank: Color { .rgb(0, 0, 0) }
	public static var magenta: Color { .rgb(255, 0, 255) }
	public static var raywhite: Color { .rgb(245, 245, 245) }
	
}
