
//MARK: - Tileset

extension Tiled {
	struct Tileset: Decodable {
		
		//MARK: Properties
		
		let firstgid: Int
		
		let columns: Int
		let tilecount: Int
		let spacing: Int
		let margin: Int
		
		let tilewidth: Int
		let tileheight: Int
		
		let imagewidth: Int
		let imageheight: Int
		let image: String
		
	}
}
