import Raylib

//MARK: - Simualtion

final class Simulation {
	
	//MARK: Properties
	
	private(set) var player: Player
	private(set) var projectiles: [Projectile] = []
	private(set) var enemies: [Enemy] = []
	
	//MARK: Initialization
	
	init() {
		let window = Window.size
		let size: Float = 32
		player = .init(x: (window.x - size) / 2, size: Vector2f(size), speed: 2)
		
		projectiles.reserveCapacity(128)
		enemies.reserveCapacity(32)
	}
	
	//MARK: Simulation Methods
	
	func update() {
		// Projectiles
		
		for i in projectiles.indices.reversed() {
			projectiles[i].position.y += Window.height.toFloat / projectiles[i].speed * Time.delta
			
			if !Rectangle(at: .zero, size: Window.size).contains(projectiles[i].position) {
				projectiles.remove(at: i)
			}
			
			// TODO: Test collisions
		}
	}
	
	//MARK: Methods
	
	func moveLeft() {
		player.x -= Window.height.toFloat / player.speed * Time.delta
		player.x.minimum(of: 0)
	}
	
	func moveRight() {
		player.x += Window.height.toFloat / player.speed * Time.delta
		player.x.maximum(of: Window.width.toFloat)
	}
	
	func spawnPlayerProjectile(_ projectile: ProjectileType) {
		var instance = Projectile(spawn: projectile, at: player.frame.position, hitting: .enemy)
		instance.speed.negate()
		projectiles.append(instance)
	}
	
	func spawnEnemyProjectile(_ projectile: ProjectileType, at position: Vector2f) {
		let instance = Projectile(spawn: projectile, at: position, hitting: .player)
		projectiles.append(instance)
	}
	
	func spawnEnemy(_ enemy: EnemyType, at position: Vector2f) {
		let instance = Enemy(spawn: enemy, at: position)
		enemies.append(instance)
	}
	
}
