import Raylib

//MARK: - Level

extension Tiled {
	struct Level: Decodable {
		
		//MARK: Properties
		
		let height: Int
		let width: Int
		let infinite: Bool
		
		let tilewidth: Int
		let tileheight: Int
		
		let orientation: Orientation
		
		let layers: [Layer]
		let tilesets: [Tileset]
		
	}
}
