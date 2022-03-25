import Raylib

//MARK: - Active Map

/// A currently active map
struct ActiveMap {
	
	//MARK: Properties
	
	/// The map on which we're playing
	let map: Map
	
	/// Information regarding the player
	var player: Player
	
	/// The items lying on the ground
	var items: [Item] = []
	
	/// The entities on the map
	var enemies: [Enemy] = []
	
	//MARK: Initialization
	
	/// Begins a map without an existing save
	init(start map: Map) {
		self.map = map
		
		player = Player(
			position: map.spawn.toFloat
		)
		
		enemies = map.enemies.map { spawn in
			Enemy(
				position: spawn.position.toFloat
			)
		}
	}
	
	//MARK: Methods
	
	func spawn(enemy: String, at position: Vector2f) {
		
	}
	
	func spawn(item: String, at position: Vector2f) {
		
	}
	
	//MARK: - Player
	
	struct Player {
		let position: Vector2f
	}
	
	//MARK: - Item
	
	struct Item {
		let position: Vector2f
	}
	
	//MARK: - Enemy
	
	struct Enemy {
		let position: Vector2f
	}
	
}
