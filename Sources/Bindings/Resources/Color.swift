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
	
	//MARK: Constants
	
	public static var lightGray: Self { .rgb(200, 200, 200) }
	public static var gray: Self { .rgb(130, 130, 130) }
	public static var darkGray: Self { .rgb(80, 80, 80) }
	public static var yellow: Self { .rgb(253, 249, 0) }
	public static var gold: Self { .rgb(253, 203, 0) }
	public static var orange: Self { .rgb(255, 161, 0) }
	public static var pink: Self { .rgb(255, 109, 194) }
	public static var red: Self { .rgb(230, 41, 55) }
	public static var maroon: Self { .rgb(190, 33, 55) }
	public static var green: Self { .rgb(0, 228, 48) }
	public static var lime: Self { .rgb(0, 158, 47) }
	public static var darkGreen: Self { .rgb(0, 117, 44) }
	public static var skyBlue: Self { .rgb(102, 191, 255) }
	public static var blue: Self { .rgb(0, 121, 241) }
	public static var darkBlue: Self { .rgb(0, 82, 172) }
	public static var purple: Self { .rgb(200, 122, 255) }
	public static var violet: Self { .rgb(135, 60, 190) }
	public static var darkPurple: Self { .rgb(112, 31, 126) }
	public static var beige: Self { .rgb(211, 176, 131) }
	public static var brown: Self { .rgb(127, 106, 79) }
	public static var darkBrown: Self { .rgb(76, 63, 47) }

	public static var white: Self { .rgb(255, 255, 255) }
	public static var black: Self { .rgb(0, 0, 0) }
	public static var blank: Self { .rgb(0, 0, 0) }
	public static var magenta: Self { .rgb(255, 0, 255) }
	public static var raywhite: Self { .rgb(245, 245, 245) }
	
	//MARK: Initialization
	
	public static func rgb(_ r: UInt8, _ g: UInt8, _ b: UInt8, a: UInt8 = .max) -> Color {
		.init(r: r, g: g, b: b, a: a)
	}
	
}
