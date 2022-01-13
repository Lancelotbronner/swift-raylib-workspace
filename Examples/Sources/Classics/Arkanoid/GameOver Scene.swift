//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-27.
//

import Raylib

//MARK: - Game Over Scene

struct GameOverScene: Scene {
	
	//MARK: Initialization
	
	init() {
		
	}
	
	//MARK: Simulation Methods
	
	func update() -> SceneAction {
		if Keyboard.enter.isPressed {
			return .replace(with: GameplayScene())
		}
		
		return .continue
	}
	
	//MARK: Drawing Methods
	
	func draw(using renderer: Renderer2D) {
		renderer.text(center: "PRESS [ENTER] TO PLAY AGAIN", size: 40, color: .gray)
	}
	
}
