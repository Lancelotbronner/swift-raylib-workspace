import Raylib

//MARK: - Menu Scene

struct MenuScene: Scene {
	
	//MARK: Properties
	
	let assets: Assets
	
	var timeline = Timeline()
	var isTextShown = true
	
	//MARK: Lifecycle
	
	init(using assets: Assets) {
		self.assets = assets
	}
	
	func wake() {
		Renderer.background = .black
	}
	
	//MARK: Simulation Methods
	
	mutating func update() -> SceneAction {
		timeline.update()
		
		timeline.every(seconds: 1) {
			isTextShown.toggle()
		}
		
		if Keyboard.space.isDown {
			return .replace(with: GameplayScene(using: assets))
		}
		
		return .continue
	}
	
	//MARK: Rendering Methods
	
	func draw() {
		//TODO: Draw an arcade-style menu
		
		Renderer2D.text("Spaceshooter", at: Window.width / 2, 40, size: 40, alignment: .center, color: .white)
		
		// Display the animated instructions
		if isTextShown {
			Renderer2D.text("Press SPACE to start", at: Window.width / 2, Window.height - 40, color: .yellow)
		}
	}
	
}
