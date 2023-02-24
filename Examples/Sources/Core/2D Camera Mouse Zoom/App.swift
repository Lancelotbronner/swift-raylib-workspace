import Raylib

//MARK: - Application

@main struct ExampleCamera2DMouseZoom: Applet {
	let ZOOM_INCREMENT: Float = 0.0125
	
	var camera: Camera2D
	
	init() {
		Window.create(800, by: 450, title: "Example - Core - 2D Camera Mouse Zoom")
		Renderer.background = .black
		Application.target(fps: 60)
		
		player = Rectangle(at: Vector2f(400, 280), size: Vector2f(40, 40))
		camera = Camera2D(at: .zero)
	}
	
	mutating func update() {
		if Mouse.right.isDown {
			let delta = Mouse.delta * -1 / camera.zoom
			camera.target += delta
		}
		
		if Mouse.wheel != 0 {
			camera.offset = Mouse.position
			camera.target = camera.toWorld(screen: Mouse.position)
			camera.zoom += wheel * ZOOM_INCREMENT;
			camera.zoom.minimum(of: ZOOM_INCREMENT)
		}
	}
	
	func draw() {
		Renderer.camera(camera) {
			for building in buildings {
				Renderer2D.rectangle(building.rect, color: building.color)
			}
			
			Renderer2D.rectangle(player, color: .red)
			
			Renderer2D.line(
				from: camera.target.x.toInt, -Window.height * 10,
				to: camera.target.x.toInt, Window.height * 10,
				color: .green)
			
			Renderer2D.line(
				from: -Window.width.toInt * 10, camera.target.y.toInt,
				to: Window.width.toInt * 10, camera.target.y.toInt,
				color: .green)
		}
		
		Renderer2D.text("SCREEN AREA", at: 640, 10, color: .red)
		
		Renderer.color = .red
		Renderer2D.rectangle(at: 0, 0, size: Window.width, 5)
		Renderer2D.rectangle(at: 0, 5, size: 5, Window.height - 10)
		Renderer2D.rectangle(at: Window.width - 5, 5, size: 5, Window.height - 10)
		Renderer2D.rectangle(at: 0, Window.height - 5, size: Window.width, 5)
		
		Renderer2D.rectangle(at: 10, 10, size: 250, 113, color: .skyBlue.faded(to: 0.5))
		WireRenderer2D.rectangle(at: 10, 10, size: 250, 113, color: .blue)
		
		Renderer.textColor = .darkGray
		Renderer.pointSize = 10
		Renderer2D.text("Free 2D camera controls:", at: 20, 20, color: .black)
		Renderer2D.text("- Right/Left to move Offset", at: 40, 40);
		Renderer2D.text("- Mouse Wheel to Zoom in-out", at: 40, 60);
		Renderer2D.text("- A / S to Rotate", at: 40, 80);
		Renderer2D.text("- R to reset Zoom and Rotation", at: 40, 100);
	}
}

//MARK: - Game

struct Building {
	var rect: Rectangle
	var color: Color
	
	static func random(offset: Float) -> Building {
		let size = Vector2f(.random(in: 50 ... 200), .random(in: 100 ... 800))
		let position = Vector2f(-6000 + offset, Window.height.toFloat - 130 - size.y)
		let color = Color.rgb(.random(in: 200 ... 240), .random(in: 200 ... 240), .random(in: 200 ... 250))
		return Building(rect: Rectangle(at: position, size: size), color: color)
	}
}
