import Raylib

//MARK: - Enemy Definition

protocol EnemyDefinition {
	
	static func spawn(at position: Vector2f) -> Self
	
	func update()
	func draw()
	
}
