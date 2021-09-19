//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

//MARK: - Copy on Write

@propertyWrapper
@dynamicMemberLookup
@usableFromInline
internal struct CopyOnWrite<Store: Copyable & AnyObject> {
	
	//MARK: Properties
	
	@usableFromInline
	var wrappedValue: Store
	
	//MARK: Initialization
	
	@inlinable
	init(_ wrappedValue: Store) {
		self.wrappedValue = wrappedValue
	}
	
	//MARK: Subscripts
	
	@usableFromInline
	subscript<Member>(dynamicMember keyPath: ReferenceWritableKeyPath<Store, Member>) -> Member {
		@_transparent
		get {
			wrappedValue[keyPath: keyPath]
		}
		@_transparent
		set {
			copyIfNotUnique()
			wrappedValue[keyPath: keyPath] = newValue
		}
	}
	
	//MARK: Methods
	
	@inlinable
	mutating func copyIfNotUnique() {
		if !isKnownUniquelyReferenced(&wrappedValue) {
			wrappedValue = wrappedValue.copy()
		}
	}
	
}
