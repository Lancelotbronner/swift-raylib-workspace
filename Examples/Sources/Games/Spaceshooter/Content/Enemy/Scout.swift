import Raylib

//MARK: - Scout Definition

struct ScoutEnemy: EnemyDefinition {
	
	//MARK: Properties
	
	let texture: Texture
	
	private var source: Rectangle
	
	//MARK: Initialization
	
	init(using texture: Texture)
	
}
