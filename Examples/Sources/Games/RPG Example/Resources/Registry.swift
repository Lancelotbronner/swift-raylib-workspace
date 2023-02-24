
//MARK: - Registry

public struct Registry<Kind> {
	
	//MARK: Properties
	
	@usableFromInline var resources: [String : Kind] = [:]
	
	//MARK: Initialization
	
	@inlinable public init() { }
	
	//MARK: Computed Properties
	
	@inlinable public var identifiers: Dictionary<String, Kind>.Keys {
		resources.keys
	}
	
	@inlinable public var values: Dictionary<String, Kind>.Values {
		resources.values
	}
	
	@inlinable public var count: Int {
		resources.count
	}
	
	//MARK: Methods
	
	/// Allows you to register a resource using an identifier
	///
	/// The resource will be assigned an internal ID which you can retrieve using ``lookup(_:)``.
	///
	/// - Parameters:
	///   - resource: The resource to register
	///   - identifier: The identifier with which the resource will be registered
	@inlinable public mutating func register(_ resource: Kind, for identifier: String) throws {
		if let existing = resources[identifier] {
			throw log(Errors.duplicate(identifier: identifier, existing: existing, new: resource))
		}
		resources[identifier] = resource
	}
	
	@inlinable public func retrieve(_ identifier: String) throws -> Kind {
		guard let resource = resources[identifier] else {
			throw log(Errors.missing(identifier: identifier))
		}
		return resource
	}
	
	@inlinable public func contains(_ identifier: String) -> Bool {
		resources.keys.contains(identifier)
	}
	
	@inlinable public func lookup(_ identifier: String) -> Kind? {
		resources[identifier]
	}
	
	//MARK: Errors
	
	public enum Errors: Error, CustomStringConvertible {
		case duplicate(identifier: String, existing: Kind, new: Kind)
		case missing(identifier: String)
		
		public var description: String {
			switch self {
			case let .missing(identifier): return "Unknown \(Kind.self) with identifier '\(identifier)'"
			case let .duplicate(identifier, existing, new): return "Cannot overwrite \(Kind.self) with identifier '\(identifier)' '\(existing)' with '\(new)'"
			}
		}
	}

	//MARK: Utilities
	
	@inlinable public mutating func reserveCapacity(_ minimumCapacity: Int) {
		resources.reserveCapacity(minimumCapacity)
	}
	
	@usableFromInline func log(_ error: Error) -> Error {
		print("[Registry<\(Kind.self)>] \(error)")
		return error
	}
	
}

//MARK: - Sequence

extension Registry: Sequence {
	
	public func makeIterator() -> Dictionary<String, Kind>.Iterator {
		resources.makeIterator()
	}
	
}
