import Raylib

@main struct HexTrader: App {
	
	//MARK: Computed Properties
	
	var initial: Scene {
		TestScene()
	}
	
	//MARK: Initialization
	
	init() {
		Window.create(1280, by: 800, title: "Hex Trader")
		
		// Configure the application
		Application.clearQuitShortcut()
		Application.target(fps: 30)
		
		// Load a window icon
		let appIcon = Filesystem
			.file(at: "Resources/Icons/AppIcon.png", from: .module)
			.loadAsImage()
		Window.set(icon: appIcon)
		
		// Configure rendering defaults
		Renderer.background = .black
		Renderer.textColor = .white
	}
	
	//MARK: Lifecycle
	
	func load() {
		for child in Filesystem.directory(at: "Resources/Textures", from: .module) {
			print("[ Resources ] - Loading \(child.name)")
//			Resources.load(texture: child.name)
		}
	}
	
}
