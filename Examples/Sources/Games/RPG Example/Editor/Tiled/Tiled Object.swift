import Raylib

//MARK: - Object

extension Tiled {
	struct Object: Decodable, Identifiable {
		
		//MARK: Properties
		
		let id: Int
		
		let name: String
		let visible: Bool
		
		let position: Vector2f
		let size: Vector2f?
		let rotation: Int
		
		let type: String
		let properties: [Property]
		let text: TextContent?
		
		//MARK: Codable
		
		private enum CodingKeys: String, CodingKey {
			case id
			case name, visible
			case x, y, width, height, rotation
			case type, properties
			case text
		}
		
		init(from decoder: Decoder) throws {
			let c = try decoder.container(keyedBy: CodingKeys.self)
			
			id = try c.decode(Int.self, forKey: .id)
			
			name = try c.decode(String.self, forKey: .name)
			visible = try c.decode(Bool.self, forKey: .visible)
			
			let x = try c.decode(Float.self, forKey: .x)
			let y = try c.decode(Float.self, forKey: .y)
			position = .init(x, y)
			let width = try c.decodeIfPresent(Float.self, forKey: .width)
			let height = try c.decodeIfPresent(Float.self, forKey: .height)
			if let w = width, let h = height {
				size = .init(w, h)
			} else {
				size = nil
			}
			rotation = try c.decode(Int.self, forKey: .rotation)
			
			type = try c.decode(String.self, forKey: .type)
			properties = try c.decodeIfPresent([Property].self, forKey: .properties) ?? []
			text = try c.decodeIfPresent(TextContent.self, forKey: .text)
		}
		
		//MARK: - Object Content
		
		struct TextContent: Decodable {
			
			let color: String
			let fontfamily: String
			let pixelsize: Int
			let text: String
			let wrap: Bool
			
		}
		
		//MARK: - Object Properties
		
		struct Property: Decodable {
			
			let name: String
			let type: String
			let value: String
			
		}
		
	}
}
