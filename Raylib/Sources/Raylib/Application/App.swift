//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

//MARK: - App

public protocol App {
	
	init()
	
	mutating func setup()
	mutating func update()
	func render()
	func draw()
	mutating func destroy()
	
}

extension App {
	
	//MARK: Defaults
	
	public func setup() { }
	public func update() { }
	public func render() { }
	public func destroy() { }
	
	//MARK: Main
	
	public static func main() {
		var app = Self.init()
		
		if !Window.isReady {
			Window.create(title: "raylib")
		}
		
		app.setup()
		Application.run {
			app.update()
			app.render()
			Renderer.render {
				Renderer.clear(to: Renderer.background)
				app.draw()
			}
		}
		app.destroy()
		
		Application.quit()
	}
	
}
