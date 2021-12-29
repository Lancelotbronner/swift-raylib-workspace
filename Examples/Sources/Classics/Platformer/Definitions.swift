//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-28.
//

import Raylib

//MARK: - Structures

enum Tile {
	case empty
	case block
	case coin
	
	func bottom(at x: Int, _ y: Int) -> Int? {
		switch self {
		case .block: return 0
		case .empty, .coin: return nil
		}
	}
	
	func top(at x: Int, _ y: Int) -> Int? {
		switch self {
		case .block: return Map.TILE_SIZE
		case .empty, .coin: return nil
		}
	}
	
	func left(at x: Int, _ y: Int) -> Int? {
		switch self {
		case .block: return 0
		case .empty, .coin: return nil
		}
	}
	
	func right(at x: Int, _ y: Int) -> Int? {
		switch self {
		case .block: return Map.TILE_SIZE
		case .empty, .coin: return nil
		}
	}
	
}

//MARK: Levels

extension Map {
	
	static let level1: Map = {
		var map = Map(size: 20, by: 12)
		map.spawn = Vector2i(10, 1)
		
		map[1, 7] = .coin
		map[3, 5] = .coin
		map[4, 5] = .coin
		map[5, 5] = .coin
		map[8, 3] = .coin
		map[9, 3] = .coin
		map[10, 3] = .coin
		map[13, 4] = .coin
		map[14, 4] = .coin
		map[15, 4] = .coin
		
		map.border(of: .block)
		map.platform(of: .block, at: 3, 8, length: 3)
		map.platform(of: .block, at: 8, 6, length: 3)
		map.platform(of: .block, at: 13, 7, length: 3)
		map[1, 10] = .block
		
		return map
	}()
	
}
