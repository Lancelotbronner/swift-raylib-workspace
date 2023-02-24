import Raylib

//MARK: - Application

@main struct BlendModes: Applet {
	let background: Texture
	let foreground: Texture
	var currentModeIndex = 0
	
	let blendModes: [(Blend, String)] = [
		(Blend.alpha, "ALPHA"),
		(Blend.additive, "ADDITIVE"),
		(Blend.multiplied, "MULTIPLIED"),
		(Blend.add, "ADD COLORS"),
		(Blend.subtract, "SUBTRACT"),
	]
	
	init() throws {
		Window.create(800, by: 450, title: "Example - Textures - Blend Modes")
		Application.target(fps: 60)
		
		background = try Filesystem
			.file(at: "background.png", from: .module)
			.loadAsTexture()
		
		foreground = try Filesystem
			.file(at: "foreground.png", from: .module)
			.loadAsTexture()
	}
	
	func load() {
		
	}
	
	mutating func update() {
		if Keyboard.space.isPressed {
			currentModeIndex = blendModes.roundRobin(after: currentModeIndex)
		}
	}
	
	func draw() {
		Renderer2D.texture(background, at: Window.size / 2 - background.size / 2)
		
		// Apply the blend mode and then draw the foreground texture
		let (mode, name) = blendModes[currentModeIndex]
		Renderer.blend(mode) {
			Renderer2D.texture(foreground, at: Window.size / 2 - foreground.size / 2)
		}
		
		// Draw the texts
		Renderer.pointSize = 10
		Renderer.textColor = .gray
		Renderer2D.text(center: "Press SPACE to change blend modes.", offset: 0, 140)
		Renderer2D.text(center: "Current: \(name)", offset: 0, 160)
		
		Renderer2D.text("(c) Cyberpunk Street Environment by Luis Zuno (@ansimuz)", at: Window.width - 330, Window.height - 20)
	}
}
