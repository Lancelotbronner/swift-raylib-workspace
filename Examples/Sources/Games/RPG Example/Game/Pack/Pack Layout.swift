import Raylib

//MARK: - Pack Layout

extension Pack {
	struct Layout: Codable {
		
		//MARK: Constants
		
		static let type = "layout"
		
		//MARK: Properties
		
		var definition: Definition
		var tilemap: Size
		var modes: Modes
		
		//MARK: Computed Properties
		
		var id: Identifier<Layout> {
			definition.identifier
		}
		
		//MARK: - Modes
		
		struct Modes: Codable {
			var fill: Vector2i?
			var cardinal: [Vector2i]?
			var blob: [Vector2i]?
		}
		
		//MARK: - Definition
		
		struct Definition: Codable {
			var identifier: Identifier<Layout>
		}
		
	}
}
