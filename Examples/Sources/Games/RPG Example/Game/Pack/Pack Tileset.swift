import Raylib

//MARK: - Pack Tileset

extension Pack {
	struct Tileset: Codable {
		
		//MARK: Constants
		
		static let type = "tileset"
		
		//MARK: Properties
		
		var definition: Definition
		
		/// The image from which to use the tileset
		var image: Image
		
		/// The size of the tile, in pixels
		var tile: Size
		
		/// The padding around the tilemap, in pixels
		var padding: Padding
		
		/// The spacing between the tiles, in pixels
		var spacing: Size
		
		/// The identifiers of each tile in the set, or null to ignore a tile
		var tiles: [String?]
		
		//MARK: Computed Properties
		
		var id: Identifier<Tileset> {
			definition.identifier
		}
		
		//MARK: - Definition
		
		struct Definition: Codable {
			var identifier: Identifier<Tileset>
		}
		
	}
}

