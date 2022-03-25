import Raylib

//MARK: - Tile Layer

extension Tiled {
	struct TileLayer: Decodable, Identifiable {
		
		//MARK: Constants
		
		static let type = "tilelayer"
		
		//MARK: Properties
		
		let id: Int
		
		let width: Int
		let height: Int
		
		let data: [Int]
		
	}
}
