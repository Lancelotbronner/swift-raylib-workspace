import Raylib

//MARK: - Projectile Definition

protocol ProjectileDefinition {
	
	/// The hitbox of the projectile, used for quick checks
	var hitbox: Rectangle { get }
	
	/// The projectile's collision mask
	var collision: CollisionMask { get }
	
	static func spawn(at position: Vector2f) -> Self
	
	mutating func update()
	func draw()
	
	func collided(with player: inout Player)
	func collided(with enemy: inout Enemy)
	
}
