import Raylib

extension Pack {
	indirect enum Image: Codable {
		
		//MARK: Cases
		
		case file(FileReference)
		case subsection(SubsectionReference)
		case tileset(TilesetReference)
//		case animation(id: Identifier<Tileset>, global: Bool, persisted: Bool)
		
		//MARK: - File
		
		struct FileReference: Codable {
			var path: String
		}
		
		struct SubsectionReference: Codable {
			var source: Image
			var position: Vector2i
			var size: Size
		}
		
		struct TilesetReference: Codable {
			var tileset: Identifier<Tileset>
			var position: Vector2i
		}
		
		struct AnimationReference: Codable {
			
		}
		
	}
}
