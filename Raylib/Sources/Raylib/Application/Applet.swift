//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-27.
//

//MARK: - Applet

public protocol Applet {
	
	init()
	
	mutating func load()
	mutating func update()
	func render()
	func draw()
	mutating func unload()
	
}

extension Applet {
	
	//MARK: Defaults
	
	@inlinable public func load() { }
	@inlinable public func update() { }
	@inlinable public func render() { }
	@inlinable public func unload() { }
	
	//MARK: @main
	
	@inlinable public static func main() {
		var app = Self.init()
		
		if !Window.isReady {
			Window.create(title: String(describing: Self.self))
		}
		
		app.load()
		
		Application.run {
			app.update()
			app.render()
			Renderer.frame {
				Renderer.clear(to: Renderer.background)
				app.draw()
			}
		}
		
		app.unload()
		Application.quit()
	}
	
}
