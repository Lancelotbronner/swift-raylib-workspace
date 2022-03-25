
//MARK: - Kinetic Projectile

public struct KineticProjectile: ProjectileDefinition {
	
	/// The projectile's current position
	var position: Vector2f
	
	/// The projectile's current speed
	var speed: Float
	
	/// The projectile's collision mask
	var mask: CollisionMask
	
}
