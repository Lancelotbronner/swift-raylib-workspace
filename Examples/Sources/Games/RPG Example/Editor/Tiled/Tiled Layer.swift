import Raylib

//MARK: - Layer

extension Tiled {
	enum Layer: Identifiable, Decodable {
		
		//MARK: Cases
		
		case tile(TileLayer)
		case object(ObjectLayer)
		
		//MARK: Computed Properties
		
		var id: Int {
			switch self {
			case let .tile(layer): return layer.id
			case let .object(layer): return layer.id
			}
		}
		
		//MARK: Codable
		
		private enum CodingKeys: String, CodingKey {
			case type
		}
		
		init(from decoder: Decoder) throws {
			let c = try decoder.container(keyedBy: CodingKeys.self)
			let type = try c.decode(String.self, forKey: .type)
			
			switch type {
			case TileLayer.type: self = .tile(try .init(from: decoder))
			case ObjectLayer.type: self = .object(try .init(from: decoder))
			default: throw TiledError.invalidLayerType(type)
			}
		}
		
	}
}
