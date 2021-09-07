//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Application

public struct Application {
	
	//MARK: Computed Properties
	
	@inlinable
	public static var isRunning: Bool {
		!WindowShouldClose()
	}
	
	@inlinable
	public static var targetFPS: Int {
		get { GetFPS().toInt }
		set { SetTargetFPS(newValue.toInt32) }
	}
	
	//MARK: Methods
	
	@inlinable
	public static func run(_ step: () -> Void) {
		while Application.isRunning {
			step()
		}
	}
	
}
