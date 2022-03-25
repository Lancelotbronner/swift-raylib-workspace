//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-03-14.
//

//MARK: - Enemy

final class Enemy {
	
	//MARK: Properties
	
	let name: String
	
	let health: Int
	
	let attack: AttackInfo
	let defense: DefenseInfo
	let detection: DetectionInfo
	
	//MARK: Initialization
	
	init(name: String, health: Int, attack: AttackInfo, defense: DefenseInfo, detection: DetectionInfo) {
		self.name = name
		self.health = health
		self.attack = attack
		self.defense = defense
		self.detection = detection
	}
	
}

//MARK: - Damage

enum Damage {
	case normal
	
	case fire
	case ice
	case lightning
	case poison
}

//MARK: - Attack

struct AttackInfo {
	
	let damage: Damage
	let amount: ClosedRange<Int>
	let range: Double
	let cooldown: Double
	
}

//MARK: - Defense

struct DefenseInfo {
	
	let armor: Int
	
}

//MARK: - Detection

struct DetectionInfo {
	
	let radius: Double
	
}
