//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Blend Modes

public enum Blend: Int {
	
	//MARK: Cases
	
	/// Blend textures considering alpha (default)
	case alpha = 0
	
	/// Blend textures adding colors
	case additive = 1
	
	/// Blend textures multiplying colors
	case multiplied = 2
	
	/// Blend textures adding colors (alternative)
	case add = 3
	
	/// Blend textures subtracting colors (alternative)
	case subtract = 4
	
	/// Blend textures using custom src/dst factors (use rlSetBlendMode())
	case custom = 5
	// TODO: Implement custom with rlSetBlendMode()
	
	//MARK: Constants
	
	/// The default blend mode
	public static let `default` = Blend.alpha
	
	//MARK: Methods
	
	/// Begin blending mode; End blending mode (reset to default: alpha blending)
	@inlinable public func render(draw: () -> Void) {
		BeginBlendMode(rawValue.toInt32)
		draw()
		EndBlendMode()
	}

}
