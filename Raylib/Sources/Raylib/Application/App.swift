//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

//MARK: - App

public protocol App {
	
	init()
	
	mutating func load()
	mutating func frame()
	mutating func unload()
	
}

extension App {
	
	//MARK: Defaults
	
	public func load() { }
	public func unload() { }
	
	//MARK: @main
	
	@inlinable public static func main() {
		var app = Self.init()
		
		if !Window.isReady {
			Window.create(title: String(describing: Self.self))
		}
		
		app.load()
		
		Application.run {
			app.frame()
		}
		
		app.unload()
		Application.quit()
	}
	
}
