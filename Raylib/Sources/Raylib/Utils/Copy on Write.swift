//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

//MARK: - Copy on Write

@propertyWrapper
@dynamicMemberLookup
public struct CopyOnWrite<Store: Copyable & AnyObject> {
	
	//MARK: Properties
	
	public var wrappedValue: Store
	
	//MARK: Initialization
	
	@inlinable public init(_ wrappedValue: Store) {
		self.wrappedValue = wrappedValue
	}
	
	//MARK: Subscripts
	
	public subscript<Member>(dynamicMember keyPath: ReferenceWritableKeyPath<Store, Member>) -> Member {
		@_transparent get {
			wrappedValue[keyPath: keyPath]
		}
		@_transparent set {
			copyIfNotUnique()
			wrappedValue[keyPath: keyPath] = newValue
		}
	}
	
	//MARK: Methods
	
	@inlinable mutating func copyIfNotUnique() {
		if !isKnownUniquelyReferenced(&wrappedValue) {
			wrappedValue = wrappedValue.copy()
		}
	}
	
}

//MARK: - Copy Value on Write

@propertyWrapper
@dynamicMemberLookup
public struct CopyValueOnWrite<Value> {
	
	//MARK: Properties
	
	@CopyOnWrite
	@usableFromInline var storage: Box<Value>
	
	//MARK: Computed Properties
	
	public var wrappedValue: Value {
		@_transparent get {
			storage.contents
		}
		@_transparent set {
			storage.contents = newValue
		}
	}
	
	//MARK: Initialization
	
	public init(_ wrappedValue: Value, duplicate: @escaping (Value) -> Value, free: @escaping (Value) -> Void) {
		_storage = CopyOnWrite(Box(wrappedValue, duplicate: duplicate, free: free))
	}
	
	public init(_ wrappedValue: Value, free: @escaping (Value) -> Void) {
		self.init(wrappedValue, duplicate: { $0 }, free: free)
	}
	
	//MARK: Subscripts
	
	public subscript<Member>(dynamicMember keyPath: ReferenceWritableKeyPath<Value, Member>) -> Member {
		@_transparent get {
			storage.contents[keyPath: keyPath]
		}
		@_transparent set {
			storage.contents[keyPath: keyPath] = newValue
		}
	}
	
}

//MARK: - Box

public final class Box<Value>: Copyable {
	
	//MARK: Properties
	
	public var contents: Value
	private let free: (Value) -> Void
	private let duplicate: (Value) -> Value
	
	//MARK: Initialization
	
	public init(_ content: Value, duplicate: @escaping (Value) -> Value, free: @escaping (Value) -> Void) {
		self.contents = content
		self.free = free
		self.duplicate = duplicate
	}
	
	public convenience init(_ content: Value, free: @escaping (Value) -> Void) {
		self.init(content, duplicate: { $0 }, free: free)
	}
	
	deinit {
		free(contents)
	}
	
	//MARK: Methods
	
	public func copy() -> Box {
		Box(duplicate(contents), duplicate: duplicate, free: free)
	}
	
}
