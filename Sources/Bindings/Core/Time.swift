//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Time

public struct Time {
	
	//MARK: Computed Properties
	
	public static var delta: Float {
		GetFrameTime()
	}
	
	public static var lifetime: Double {
		GetTime()
	}
	
}
