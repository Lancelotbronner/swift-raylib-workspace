import Raylib

//MARK: - Player

struct Player {
	
	//MARK: Properties
	
	/// The player's X position
	var x: Float
	
	/// The player's size in pixels
	var size: Vector2f
	
	/// The player's speed in seconds to cross scene's width
	var speed: Float
	
	//MARK: Computed Properties
	
	var frame: Rectangle {
		Rectangle(at: x, Window.height.toFloat - 40, size: size.x, size.y)
	}
	
}

//MARK: - Projectile

struct Projectile {
	
	//MARK: Properties
	
	/// The kind of projectile this is
	let type: ProjectileType
	
	/// The projectile's current position
	var position: Vector2f
	
	/// The projectile's current speed
	var speed: Float
	
	/// The projectile's collision mask
	var mask: CollisionMask
	
	//MARK: Methods
	
	init(spawn type: ProjectileType, at position: Vector2f, hitting mask: CollisionMask) {
		self.type = type
		self.position = position
		self.speed = type.speed
		self.mask = mask
	}
	
}

//MARK: - Hitmask

struct CollisionMask: OptionSet {
	static let player = CollisionMask(rawValue: 1 << 0)
	static let enemy = CollisionMask(rawValue: 1 << 1)
	
	let rawValue: UInt8
	
	init(rawValue: UInt8) {
		self.rawValue = rawValue
	}
}

//MARK: - Enemy

struct Enemy {
	
	//MARK: Properties
	
	/// The type of enemy this is
	let type: EnemyType
	
	/// The enemy's position on screen
	var position: Vector2f
	
	/// The enemy's current health
	var health: Int
	
	//MARK: Initialization
	
	init(spawn type: EnemyType, at position: Vector2f) {
		self.type = type
		self.position = position
		health = type.health
	}
	
}
