//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

//MARK: - Copy on Write

@dynamicMemberLookup
@usableFromInline
struct CopyOnWrite<Value: Copyable & AnyObject> {
	
	//MARK: Properties
	
	@usableFromInline
	var value: Value
	
	//MARK: Initialization
	
	@inlinable
	init(_ wrapped: Value) {
		value = wrapped
	}
	
	//MARK: Subscripts
	
	@usableFromInline
	subscript<Member>(dynamicMember keyPath: ReferenceWritableKeyPath<Value, Member>) -> Member {
		@_transparent
		get {
			value[keyPath: keyPath]
		}
		@_transparent
		set {
			copyIfNotUnique()
			value[keyPath: keyPath] = newValue
		}
	}
	
	//MARK: Methods
	
	@inlinable
	mutating func copyIfNotUnique() {
		if !isKnownUniquelyReferenced(&value) {
			value = value.copy()
		}
	}
	
}
