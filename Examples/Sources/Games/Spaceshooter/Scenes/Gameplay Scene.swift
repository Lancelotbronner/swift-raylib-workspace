import Raylib

//MARK: - Gameplay Scene

struct GameplayScene: Scene {
	
	//MARK: Properties
	
	let assets: Assets
	
	let simulation = Simulation()
	
	let laser: ProjectileType
	
	//MARK: Initialization
	
	init(using assets: Assets) {
		self.assets = assets
		
		laser = ProjectileType(speed: 2, texture: Rectangle(at: 8, 16, size: 8, 8), of: assets.projectiles)
	}
	
	//MARK: Simulation Methods
	
	mutating func update() -> SceneAction {
		// Player Movement
		
		if [Keyboard.a, Keyboard.left].anyDown {
			simulation.moveLeft()
		}
		
		if [Keyboard.d, Keyboard.right].anyDown {
			simulation.moveRight()
		}
		
		// Player Weapon
		
		if Keyboard.space.isPressed || Mouse.left.isPressed {
			simulation.spawnPlayerProjectile(laser)
		}
		
		// Simulation
		
		simulation.update()
		
		return .continue
	}
	
	//MARK: - Rendering Methods
	
	func draw() {
		for projectile in simulation.projectiles {
			Renderer2D.texture(projectile.type.texture, from: Rectangle(at: 8, 8, size: 8, 8), to: Rectangle(at: projectile.position, size: Vector2f(32)))
		}
		
		Renderer2D.rectangle(simulation.player.frame, color: .blue)
	}
	
}
