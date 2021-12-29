//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-28.
//

import Raylib

struct Map {
	
	//MARK: Constants
	
	static let TILE_SIZE = 16
	
	//MARK: Properties
	
	var spawn = Vector2i.zero
	
	private(set) var tiles: [Tile]
	
	let width: Int
	let height: Int
	
	//MARK: Computed Properties
	
	var size: Vector2i {
		Vector2i(width, height)
	}
	
	//MARK: Initialization
	
	init(size width: Int, by height: Int) {
		self.width = width
		self.height = height
		tiles = [Tile](repeating: .empty, count: width * height)
	}
	
	//MARK: Subscripts
	
	subscript(_ x: Int, _ y: Int) -> Tile {
		get { tiles[index(at: x, y)] }
		set { tiles[index(at: x, y)] = newValue }
	}
	
	subscript(_ position: Vector2i) -> Tile {
		get { self[position.x, position.y] }
		set { self[position.x, position.y] = newValue }
	}
	
	//MARK: Methods
	
	mutating func border(of tile: Tile) {
		let lastRow = (height - 1) * width
		for x in 0 ..< width {
			tiles[x] = tile
			tiles[lastRow + x] = tile
		}
		
		var y = 0
		for _ in 1 ..< height - 1 {
			tiles[y] = tile
			tiles[y + width] = tile
			y += width
		}
	}
	
	mutating func platform(of tile: Tile, at x: Int, _ y: Int, length: Int) {
		let initial = index(at: x, y)
		for i in initial ..< initial + length {
			tiles[i] = tile
		}
	}
	
	@inlinable func iterate(do block: (Vector2i) -> Void) {
		for y in 0 ..< height {
			for x in 0 ..< width {
				block(Vector2i(x, y))
			}
		}
	}
	
	@inlinable func iterate(do block: (Vector2i, Tile) -> Void) {
		var i = 0
		iterate { position in
			block(position, tiles[i])
			i += 1
		}
	}
	
	//MARK: Utilities
	
	private func index(at x: Int, _ y: Int) -> Int {
		y * width + x
	}
	
}
