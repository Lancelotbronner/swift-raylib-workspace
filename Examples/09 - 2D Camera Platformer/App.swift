//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import Raylib

//MARK: - Application

@main
struct Example09: App {
	let startingPosition = Vector2f(400, 280)
	
	var camera: Camera2D
	var player: Player
	var cameraStyleIndex = 0
	
	var cameraStyle: CameraStyle {
		CameraStyles.all[cameraStyleIndex]
	}
	
	init() {
		Window.create(800, by: 450, title: "Example 09 - 2D Camera Platformer")
		Window.background = .lightGray
		Application.targetFPS = 60
		
		player = Player(at: startingPosition)
		camera = Camera2D(at: startingPosition)
	}
	
	mutating func update() {
		player.update()
		
		camera.zoom += Mouse.wheel * 0.05
		camera.zoom.clamp(between: 0.25, and: 3)
		
		if Keyboard.r.isPressed {
			camera.zoom = 1
			player.position = startingPosition
		}
		
		if Keyboard.c.isPressed {
			cameraStyleIndex = CameraStyles.all.roundRobin(after: cameraStyleIndex)
		}
		
		cameraStyle.update(&camera, for: player)
	}
	
	func draw() {
		camera.render {
			Renderer.shapeColor = .gray
			
			for obstacle in environment {
				Renderer.rectangle(obstacle)
			}
			
			Renderer.rectangle(at: player.position.x.toInt - 20, player.position.y.toInt - 40, size: 40, 40, color: .red)
		}
		
		Renderer.textSize = 10
		
		Renderer.textColor = .black
		Renderer.text("Controls:", at: 20, 20)
		Renderer.text("Camera mode:", at: 20, 140)
		
		Renderer.textColor = .darkGray
		Renderer.text("- Right/Left to move", at: 40, 40)
		Renderer.text("- Space to jump", at: 40, 60)
		Renderer.text("- Mouse Wheel to Zoom in-out", at: 40, 80)
		Renderer.text("- R to reset zoom and position", at: 40, 100)
		Renderer.text("- C to change camera mode", at: 40, 120)
		Renderer.text(cameraStyle.name, at: 40, 160)
	}
}

//MARK: - Game

//MARK: Environment

let GRAVITY: Float = 400

let map = Vector2f(1000, 200)

let environment = [
	Rectangle(x: 0, y: 400, width: 1000, height: 200),
	Rectangle(x: 300, y: 200, width: 400, height: 10),
	Rectangle(x: 250, y: 300, width: 100, height: 10),
	Rectangle(x: 650, y: 300, width: 100, height: 10),
]

//MARK: Player

struct Player {
	let JUMP_SPEED: Float = 350
	let MOVEMENT_SPEED: Float = 200
	
	var position: Vector2f
	var speed: Float
	var canJump: Bool
	
	init(at position: Vector2f) {
		self.position = position
		speed = 0
		canJump = true
	}
	
	mutating func update() {
		if Keyboard.left.isDown {
			position.x -= MOVEMENT_SPEED * Time.delta
		}
		if Keyboard.right.isDown {
			position.x += MOVEMENT_SPEED * Time.delta
		}
		
		if Keyboard.space.isDown && canJump {
			speed = -JUMP_SPEED
			canJump = false
		}
		
		let newY = position.y + speed * Time.delta
		let hit = environment.first { obstacle in
			obstacle.startX <= position.x
			&& obstacle.endX >= position.x
			&& obstacle.startY >= position.y
			&& obstacle.startY < newY
		}
		
		if let obstacle = hit {
			speed = 0
			position.y = obstacle.y
			canJump = true
			
		} else {
			position.y = newY
			speed += GRAVITY * Time.delta
			canJump = false
		}
	}
}

//MARK: Camera

protocol CameraStyle: AnyObject {
	
	var name: String { get }
	
	func update(_ camera: inout Camera2D, for player: Player)
	
}

enum CameraStyles {
	
	static let all: [CameraStyle] = [
		CenterCameraStyle(),
		ClampedCameraStyle(),
		SmoothCameraStyle(),
		EvenOutOnLandingCameraStyle(),
		PushCameraStyle()
	]
	
	final class CenterCameraStyle: CameraStyle {
		let name = "Follow player center"
		
		func update(_ camera: inout Camera2D, for player: Player) {
			camera.offset = Window.size / 2
			camera.target = player.position
		}
	}
	
	final class ClampedCameraStyle: CameraStyle {
		let name = "Follow player center, but clamp to map edges"
		
		func update(_ camera: inout Camera2D, for player: Player) {
			camera.offset = Window.size / 2
			camera.target = player.position
			
			var min = Vector2f(0)
			var max = map
			
			for obstacle in environment {
				min.maximum(of: obstacle.bottomLeft)
				max.minimum(of: obstacle.topRight)
			}
			
			min = camera.toScreen(world: min)
			max = camera.toScreen(world: max)
			let size = Window.size
			
			if max.x < size.x {
				camera.offset.x = size.x - (max.x - size.x / 2)
			}
			if max.y < size.y {
				camera.offset.y = size.y - (max.y - size.y / 2)
			}
			if min.x > 0 {
				camera.offset.x = size.x / 2 - min.x
			}
			if min.y > 0 {
				camera.offset.y = size.y / 2 - min.y
			}
		}
	}
	
	final class SmoothCameraStyle: CameraStyle {
		let minSpeed: Float = 30
		let minEffectLength: Float = 10
		let fractionSpeed: Float = 0.8
		
		let name = "Follow player center, smoothed"
		
		func update(_ camera: inout Camera2D, for player: Player) {
			camera.offset = Window.size / 2
			let diff = player.position - camera.target
			let length = diff.length
			
			if length > minEffectLength {
				let speed = max(fractionSpeed * length, minSpeed)
				camera.target += diff * speed * Time.delta / length
			}
		}
	}
	
	final class EvenOutOnLandingCameraStyle: CameraStyle {
		let speed: Float = 700
		
		let name = "Follow player center horizontally; updateplayer center vertically after landing"
		
		private var active = false
		private var target: Float = 0
		
		func update(_ camera: inout Camera2D, for player: Player) {
			camera.offset = Window.size / 2
			camera.target.x = player.position.x
			
			if active {
				if target > camera.target.y {
					camera.target.y += speed * Time.delta
					if camera.target.y > target {
						camera.target.y = target
						active = false
					}
					
				} else {
					camera.target.y -= speed * Time.delta
					if camera.target.y < target {
						camera.target.y = target
						active = false
					}
				}
				
			} else if player.canJump && player.speed == 0 && player.position.y != camera.target.y {
				active = true
				target = player.position.y
			}
		}
	}
	
	final class PushCameraStyle: CameraStyle {
		let name = "Player push camera on getting too close to screen edge"
		
		private var bounds = Vector2f(0.2)
		
		func update(_ camera: inout Camera2D, for player: Player) {
			let lowerBounds = (.one - bounds) / 2 * Window.size
			
			let min = camera.toWorld(screen: lowerBounds)
			let max = camera.toWorld(screen: (.one + bounds) / 2 * Window.size)

			camera.offset = lowerBounds
			
			if player.position.x < min.x {
				camera.target.x = player.position.x
			}
			
			if player.position.y < min.y {
				camera.target.y = player.position.y
			}
			
			if player.position.x > max.x {
				camera.target.x = min.x + (player.position.x - max.x)
			}
			
			if player.position.y > max.y {
				camera.target.y = min.y + (player.position.y - max.y)
			}
		}
	}
	
}
