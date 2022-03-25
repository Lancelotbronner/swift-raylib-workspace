import Raylib

struct LoadingScene: Scene {
	
	//MARK: Properties
	
	private static var assets: Assets?
	
	var timeline = Timeline()
	var numberOfExtraDots = 0
	
	//MARK: Events
	
	mutating func load() {
		// When the scene first loads, start an asynchronous task to load the resources
//		Task {
			// TODO: Cannot async load a texture
			LoadingScene.assets = .init()
//		}
	}
	
	func wake() {
		// Set our rendering defaults for this scene
		Renderer.pointSize = 20
		Renderer.textColor = .raywhite
	}
	
	//MARK: Updating
	
	mutating func update() -> SceneAction {
		// As soon as our resources finished loading, replace with the main menu!
		if let resources = LoadingScene.assets {
			return .replace(with: MenuScene(using: resources))
		}
		
		// Always update your timeline!
		timeline.update()
		
		// We're using this to animate the loading message twice per second
		timeline.every(milliseconds: 500) {
			numberOfExtraDots += 1
			numberOfExtraDots %= 2
		}
		
		// Do nothing, wait for the resources to load
		return .continue
	}
	
	//MARK: Drawing
	
	func draw() {
		// Let our users know what we're doing, the animation lets them know the game hasn't frozen
		let message = "Loading." + String(repeating: ".", count: numberOfExtraDots)
		Renderer2D.text(center: message)
	}
	
}
