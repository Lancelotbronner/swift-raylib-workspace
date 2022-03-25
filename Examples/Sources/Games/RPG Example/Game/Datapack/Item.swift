//
////MARK: - Item
//
//class Item {
//	
//	//MARK: Properties
//	
//	let singular: String
//	let plural: String
//	
//	//MARK: Initialization
//	
//	init(name singular: String, plural: String? = nil) {
//		self.singular = singular
//		self.plural = plural ?? singular
//	}
//	
//}
//
////MARK: - Weapon
//
//class Weapon: Item {
//	
//	//MARK: Properties
//	
//	let attack: AttackInfo
//	
//	//MARK: Initialization
//	
//	init(name singular: String, plural: String? = nil, attack: AttackInfo) {
//		super.init(name: singular, plural: plural)
//		self.attack = attack
//	}
//	
//}
//
////MARK: - Consumable
//
//class Consumable: Item {
//	
//	//MARK: Properties
//	
//	let health: Int
//	
//	//MARK: Initialization
//	
//	init(name singular: String, plural: String? = nil, health: Int) {
//		super.init(name: singular, plural: plural)
//		self.health = health
//	}
//	
//}
