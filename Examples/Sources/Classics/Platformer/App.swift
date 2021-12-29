//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-28.
//

import Raylib

@main struct Platformer: App {
	
	//MARK: Computed Properties
	
	var initial: Scene {
		GameplayScene(for: .level1)
	}
	
	//MARK: Initialization
	
	init() {
		Window.create(800, by: 450, title: "Platformer")
		Application.target(fps: 60)
	}
	
}
