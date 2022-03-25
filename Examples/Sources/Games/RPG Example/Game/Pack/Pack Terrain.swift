
//MARK: - Pack Terrain

extension Pack {
	struct Terrain: Codable {
		
		//MARK: Constants
		
		static let type = "terrain"
		
		//MARK: Properties
		
		var definition: Definition
		var texture: String
		var tilemap: Size
		var tile: Size
		var background: Bool
		var layout: String
		
		//MARK: Computed Properties
		
		var id: Identifier<Terrain> {
			definition.identifier
		}
		
		//MARK: - Definition
		
		struct Definition: Codable {
			var identifier: Identifier<Terrain>
		}
		
	}
}

//{
//	"type": "terrain",
//	"description": {
//		"identifier": "sand"
//	},
//	"texture": "terrain/path-sand.png",
//	"tilemap": {
//		"width": 8,
//		"height": 6,
//		"background": false
//	}
//	"tile": {
//		"width": 16,
//		"height": 16
//	},
//	"layout": "path"
//}
