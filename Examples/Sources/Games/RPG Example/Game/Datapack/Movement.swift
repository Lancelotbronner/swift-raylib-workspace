
//MARK: - Movement

struct Movement: OptionSet {
	
	//MARK: Constants
	
	static let walk = Movement(rawValue: 1 << 0)
	static let swim = Movement(rawValue: 1 << 1)
	static let fly = Movement(rawValue: 1 << 2)
	static let hover = Movement(rawValue: 1 << 3)
	static let burrow = Movement(rawValue: 1 << 4)
	static let climb = Movement(rawValue: 1 << 5)
	
	//MARK: Properties
	
	let rawValue: UInt16
	
}
