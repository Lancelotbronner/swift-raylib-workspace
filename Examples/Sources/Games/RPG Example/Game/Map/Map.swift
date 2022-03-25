import Raylib

// TODO: https://gamedevelopment.tutsplus.com/tutorials/how-to-use-tile-bitmasking-to-auto-tile-your-level-layouts--cms-25673

//MARK: - Map

struct Map: Codable {
	
	//MARK: Typealiases
	
	typealias TileIndex = UInt16
	typealias LootTable = String
	typealias MapIdentifier = String
	
	//MARK: Properties
	
	/// The name of this map
	let name: String
	
	/// The position on which the player spawns
	let spawn: Vector2i
	
	/// The size of the map, in tiles
	let size: Vector2i
	
	/// The packs used by this map
	let packs: [String : Pack]
	
	/// Mappings for tile indexes
	let tileset: [Tile]
	
	/// The various layers composing this map
	let layers: [Layer]
	
	/// Objects which can be looted
	let lootables: [Lootable]
	
	/// Doors which transition to other maps
	let doors: [Door]
	
	/// Enemies on the map
	let enemies: [Enemy]
	
	//MARK: - Tileset
	
	struct Pack: Codable {
		let identifier: String
//		let version: String
	}
	
	enum Tile: Codable {
		/// Specific tile, like a decoration
		case tile(tile: String)
		
		/// Fill tile from a terrain
		case fill(terrain: String)
		
		/// Cardinal connectable tiles from a terrain
		case cardinal(terrain: String)
		
		/// Blob connectable tiles from a terrain
		case blob(terrain: String)
	}
	
	//MARK: - Layers
	
	enum Layer: Codable {
		/// Fills a layer with a single tile, ideal for base layer
		case fill(tile: TileIndex)
		
		/// Describes every tile in whole layer, ideal for terrain layers
		case compact(tiles: [TileIndex?])
		
		/// Places tiles at a specific position, ideal for decoration layers
		case sparse(tiles: [Vector2i : TileIndex])
	}
	
	//MARK: - Lootable
	
	struct Lootable: Codable {
		
		/// The tile on which this lootable is
		let position: Vector2i
		
		/// The look of this lootable
		let regular: TileIndex
		
		/// The look of this lootable when opened
		let opened: TileIndex
		
		/// The loot table from which to generate loot
		let table: LootTable
		
	}
	
	//MARK: - Door
	
	struct Door: Codable {
		
		/// The position on which the door is
		let position: Vector2i
		
		/// The transition on walking through the door
		let transition: Transition
	}
	
	enum Transition: Codable {
		
		/// Moves into another map within the same stage
		case entrance(MapIdentifier)
		
		/// Go back to the previous map
		case exit
		
		/// Move into the next stage
		case stage(MapIdentifier)
		
		/// Win the game
		case win
		
	}
	
	//MARK: - Enemy
	
	struct Enemy: Codable {
		
		/// The tile on which the enemy is placed
		let position: Vector2i
		
		/// The enemy to spawn
		let enemy: String
		
	}
	
}
