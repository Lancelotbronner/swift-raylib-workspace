//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import Raylib

//MARK: - Gameplay Scene

struct GameplayScene: Scene {
	
	//MARK: Properties
	
	var isPaused = false
	
	var player: Player
	var ball: Ball
	var bricks: [[Brick]]
	let sizeOfBrick: Vector2f
	
	//MARK: Initialization
	
	init() {
		sizeOfBrick = Vector2f(Window.width.toFloat / Configuration.bricksPerLine.toFloat, 40)
		
		player = Player(
			body: Rectangle(at: Window.width.toFloat / 2, Window.height.toFloat * 7 / 8, size: Window.width.toFloat / 10, 20),
			lives: Configuration.playerLives)
		
		ball = Ball(
			body: Circle(at: Window.width.toFloat / 2, Window.height.toFloat * 7 / 8, radius: 7),
			speed: .zero,
			isActive: false)
		
		bricks = []
		bricks.reserveCapacity(Configuration.linesOfBricks)
		for i in 0 ..< Configuration.linesOfBricks {
			var line: [Brick] = []
			line.reserveCapacity(Configuration.bricksPerLine)
			let positionY = i.toFloat * sizeOfBrick.y + Configuration.initialBrickPosition
			
			for j in 0 ..< Configuration.bricksPerLine {
				let positionX = j.toFloat * sizeOfBrick.x + sizeOfBrick.x / 2
				line.append(Brick(body: Vector2f(positionX, positionY), isActive: true))
			}
			bricks.append(line)
		}
	}
	
	//MARK: Simulation Methods
	
	mutating func update() -> SceneAction {
		if Keyboard.p.isPressed {
			isPaused.toggle()
		}
		
		guard !isPaused else {
			return .continue
		}
		
		// Player: Movement Logic
		
		if Keyboard.left.isPressed {
			player.body.x -= 5
			player.body.x.minimum(of: player.body.width / 2)
		}
		
		if Keyboard.right.isPressed {
			player.body.x += 5
			player.body.x.maximum(of: Window.width.toFloat - player.body.width / 2)
		}
		
		// Ball: Launching Logic
		
		if !ball.isActive && Keyboard.space.isPressed {
			ball.isActive = true
			ball.speed = Vector2f(0, -5)
		}
		
		// Ball: Movement Logic
		
		if ball.isActive {
			ball.body.position += ball.speed
		} else {
			ball.body.position = Vector2f(player.body.position.x, Window.height.toFloat * 7 / 8 - 30)
		}
		
		// Collision Logic: Ball & Wall
		
		if ball.body.right.x >= Window.width.toFloat || ball.body.left.x <= 0 {
			ball.speed.x.negate()
		}
		
		if ball.body.top.y <= 0 {
			ball.speed.y.negate()
		}
		
		if ball.body.bottom.y >= Window.height.toFloat {
			ball.speed = .zero
			ball.isActive = false
			player.lives -= 1
		}
		
		// Collision Logic: Ball & Player
		
		if ball.body.collided(with: player.body), ball.speed.y > 0 {
			ball.speed.y.negate()
			ball.speed.x = (ball.body.position.x - player.body.position.x) / player.body.size.x / 2 * 5
		}
			
		// Collision Logic: Ball & Brick
		
		for i in bricks.indices {
			for j in bricks[i].indices where bricks[i][j].isActive {
				let brick = Rectangle(at: bricks[i][j].position, size: sizeOfBrick)
				
				if ball.speed.y < 0, ball.body.top.y <= brick.top.y, ball.body.bottom.y > brick.bottom.y + ball.speed.y, abs(ball.body.position.x - brick.position.x) < brick.width / 2 + ball.body.radius * 2 / 3 {
					bricks[i][j].isActive = false
					ball.speed.y.negate()
				}
				
				if ball.speed.y > 0, ball.body.bottom.y <= brick.top.y, ball.body.bottom.y < brick.top.y + ball.speed.y, abs(ball.body.position.x - brick.position.x) < brick.width / 2 + ball.body.radius * 2 / 3 {
					bricks[i][j].isActive = false
					ball.speed.y.negate()
				}
				
				if ball.speed.x > 0, ball.body.left.x <= brick.right.x, ball.body.left.x < brick.right.x + ball.speed.x, abs(ball.body.position.y - brick.position.y) < brick.height / 2 + ball.body.radius * 2 / 3 {
					bricks[i][j].isActive = false
					ball.speed.y.negate()
				}
				
				if ball.speed.x < 0, ball.body.right.x <= brick.left.x, ball.body.left.x < brick.right.x + ball.speed.x, abs(ball.body.position.y - brick.position.y) < brick.height / 2 + ball.body.radius * 2 / 3 {
					bricks[i][j].isActive = false
					ball.speed.y.negate()
				}
				
			}
		}
			
						
						// Hit left
						else if (((ball.position.x + ball.radius) >= (brick[i][j].position.x - brickSize.x/2)) &&
								 ((ball.position.x + ball.radius) < (brick[i][j].position.x - brickSize.x/2 + ball.speed.x)) &&
								 ((fabs(ball.position.y - brick[i][j].position.y)) < (brickSize.y/2 + ball.radius*2/3)) && (ball.speed.x > 0))
						{
							brick[i][j].active = false;
							ball.speed.x *= -1;
						}
						// Hit right
						else if (((ball.position.x - ball.radius) <= (brick[i][j].position.x + brickSize.x/2)) &&
								 ((ball.position.x - ball.radius) > (brick[i][j].position.x + brickSize.x/2 + ball.speed.x)) &&
								 ((fabs(ball.position.y - brick[i][j].position.y)) < (brickSize.y/2 + ball.radius*2/3)) && (ball.speed.x < 0))
						{
							brick[i][j].active = false;
							ball.speed.x *= -1;
						}
					}
				}
			}
			
			// Game over logic
			if (player.life <= 0) gameOver = true;
			else
			{
				gameOver = true;
				
				for (int i = 0; i < LINES_OF_BRICKS; i++)
				{
					for (int j = 0; j < BRICKS_PER_LINE; j++)
					{
						if (brick[i][j].active) gameOver = false;
					}
				}
			}
		}
	}
	
	//MARK: Drawing Methods
	
	func draw() {
		
	}
	
}
