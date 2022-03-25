import Raylib

@main struct Scisor: Applet {
	var area = Rectangle(at: 0, 0, size: 200, 200)
	var isScissorEnabled = true
	
	init() {
		// FIXME: This seems to be bugged on retina displays
		Window.create(800, by: 450, title: "Example - Core - Scissor Test")
		Application.target(fps: 60)
	}
	
	mutating func update() {
		if Keyboard.s.isPressed {
			isScissorEnabled.toggle()
		}
		
		area.position = Mouse.position - area.size / 2
	}
	
	func draw() {
		WireRenderer2D.rectangle(area, color: .black)
		Renderer2D.text("Press S to toggle scissor test", at: 10, 10)
		
		guard isScissorEnabled else { return }
		Renderer.scissor(at: area.position, size: area.size) {
			Renderer2D.rectangle(at: .zero, size: Window.size, color: .red)
			Renderer2D.text("Move the mouse around to reveal this text!", at: 190, 200, color: .lightGray)
		}
	}
	
}
