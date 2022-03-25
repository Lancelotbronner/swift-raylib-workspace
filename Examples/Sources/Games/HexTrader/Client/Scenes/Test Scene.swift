import Raylib

//MARK: - Test Scene

struct TestScene: Scene {
	
	func update() -> SceneAction {
		.continue
	}
	
	func draw() {
		Renderer2D.text(center: "Hello World!")
	}
	
}
