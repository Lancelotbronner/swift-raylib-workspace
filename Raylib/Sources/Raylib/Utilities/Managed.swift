//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-29.
//

//MARK: - Memory Manageable

public protocol MemoryManageable {
	
	static func unload(instance: Self)
	
}

extension MemoryManageable {
	
	@inlinable public var managed: Managed<Self> {
		Managed(underlying: self)
	}
	
	@inlinable public var unmanaged: Unmanaged<Self> {
		Unmanaged(underlying: self)
	}
	
}

//MARK: - Unmanaged

public struct Unmanaged<Subject: MemoryManageable> {
	
	//MARK: Properties
	
	@usableFromInline let underlying: Subject
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: Subject {
		underlying
	}
	
	//MARK: Initialization
	
	@usableFromInline init(underlying raylib: Subject) {
		underlying = raylib
	}
	
}

//MARK: - Managed Subjectexture

public final class Managed<Subject: MemoryManageable> {
	
	//MARK: Properties
	
	@usableFromInline let underlying: Subject
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: Subject {
		underlying
	}
	
	//MARK: Initialization
	
	@usableFromInline init(underlying raylib: Subject) {
		underlying = raylib
	}
	
	deinit {
		Subject.unload(instance: underlying)
	}
	
}
