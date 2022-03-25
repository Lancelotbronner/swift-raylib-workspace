
final class Terrain {
	
	//MARK: Properties
	
	let identifier: String
	
	/// What kind of movement is allowed on this terrain
	let movement: Movement
	
	//MARK: Initialization
	
	init(_ identifier: String, movement: Movement) {
		self.identifier = identifier
		self.movement = movement
	}
	
}
