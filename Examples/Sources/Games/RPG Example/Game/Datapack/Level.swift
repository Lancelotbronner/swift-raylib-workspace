//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-03-14.
//

import Raylib

//MARK: - Level

final class Level {
	
	//MARK: Properties
	
	private var ground: [Terrain] = []
	private var decoration: [UInt16] = []
	
	private var entrance: Vector2i
	private var spawns: [Spawn] = []
	private var chests: [Loot] = []
	private var doors: [Door] = []
	
	//MARK: Initialization
	
	init(size width: Int, by height: Int, entrance: Vector2i) {
		self.entrance = entrance
	}
	
}

//MARK: - Spawn

struct Spawn {
	
	//MARK: Properties
	
	let position: Vector2i
	let enemy: Enemy
	
}

//MARK: - Loot

struct Loot {
	
	//MARK: Properties
	
	let position: Vector2i
//	let table: [Item] = []
	
}

//MARK: - Door

struct Door {
	
	//MARK: Properties
	
	let next: Level?
	
}
