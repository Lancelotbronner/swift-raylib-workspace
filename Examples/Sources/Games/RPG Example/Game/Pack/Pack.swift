import Raylib

//MARK: - Pack

struct Pack {
	
	//MARK: Properties
	
	/// Information about the pack
	var metadata: Metadata
	
	/// Layouts declared in this pack
	var layouts: [String : Layout] = [:]
	
	/// Terrains declared in this pack
	var terrains: [String : Terrain] = [:]
	
	/// Tilesets declared in this pack
	var tilesets: [String : Tileset] = [:]
	
	//MARK: Initialization
	
	init(at root: Directory) throws {
		metadata = try root
			.file("pack.json")
			.loadAsJSON()
		
		for item in root.directory("layouts").contents {
			do {
				let layout = try item.file.loadAsJSON(of: Layout.self)
				layouts[layout.id] = layout
			} catch {
				metadata.log("Invalid layout in \(item.file.filename): \(error)")
			}
		}
		
		for item in root.directory("terrain").contents {
			do {
				let terrain = try item.file.loadAsJSON(of: Terrain.self)
				terrains[terrain.id] = terrain
			} catch {
				metadata.log("Invalid terrain in \(item.file.filename): \(error)")
			}
		}
		
		for item in root.directory("tileset").contents {
			do {
				let tileset = try item.file.loadAsJSON(of: Tileset.self)
				tilesets[tileset.id] = tileset
			} catch {
				metadata.log("Invalid tileset in \(item.file.filename): \(error)")
			}
		}
	}
	
}

//MARK: - Identifier

typealias Identifier<T> = String
