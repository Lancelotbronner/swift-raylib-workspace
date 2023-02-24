import Raylib

@main struct ImageGeneration: Applet {
	var textures: [Texture]
	var index = 0
	
	init() {
		Window.create(800, by: 450, title: "Examples - Textures - Image Generation")
		Application.target(fps: 60)
		
		textures = [
			Image.gradientV(size: Window.width, by: Window.height, from: .red, to: .blue),
			Image.gradientH(size: Window.width, by: Window.height, from: .red, to: .blue),
			Image.gradientRadial(size: Window.width, by: Window.height, from: .white, to: .black),
			Image.checked(size: Window.width, by: Window.height, tiles: 32, 32, colors: .maroon, .darkBlue),
			Image.whiteNoise(size: Window.width, by: Window.height, factor: 0.5),
			// Was removed due to license issues
//			Image.perlinNoise(size: Window.width, Window.height, offset: 50, 50, scale: 4),
			Image.cellular(size: Window.width, by: Window.height, cell: 32),
		].map { $0.convertToTexture() }
	}
	
	mutating func update() {
		if Mouse.left.isPressed || Keyboard.right.isPressed {
			index = textures.roundRobin(after: index)
		}
		if Mouse.right.isPressed || Keyboard.left.isPressed {
			index = textures.roundRobin(before: index)
		}
	}
	
	func draw() {
		Renderer2D.texture(textures[index], at: .zero)
		
		Renderer2D.rectangle(at: 30, 400, size: 325, 30, color: .skyBlue.faded(to: 0.5))
		WireRenderer2D.rectangle(at: 30, 400, size: 325, 30, color: .white.faded(to: 0.5))
		Renderer2D.text("MOUSE LEFT BUTTON to CYCLE PROCEDURAL TEXTURES", at: 40, 410, size: 10, color: .white)
		
		switch index {
		case 0: Renderer2D.text("VERTICAL GRADIENT", at: 560, 10, color: .raywhite)
		case 1: Renderer2D.text("HORIZONTAL GRADIENT", at: 540, 10, color: .raywhite)
		case 2: Renderer2D.text("RADIAL GRADIENT", at: 580, 10, color: .lightGray)
		case 3: Renderer2D.text("CHECKED", at: 680, 10, color: .raywhite)
		case 4: Renderer2D.text("WHITE NOISE", at: 640, 10, color: .red)
			// was removed due to license issues
//		case 5: Renderer2D.text("PERLIN NOISE", at: 630, 10, color: .raywhite)
		case 5: Renderer2D.text("CELLULAR", at: 670, 10, color: .raywhite)
		default: break
		}
	}
	
}
