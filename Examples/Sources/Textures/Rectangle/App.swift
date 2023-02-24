import Raylib

@main struct SpritesheetExample: Applet {
	static let ANIMATION_SPEED_RANGE = 1 ... 15
	
	let sprite: Texture
	let spritesheet: Spritesheet
	
	var position: Vector2f
	var frame: Rectangle
	var timeline = Timeline()
	var index = 0
	var framesPerSecond = 8
	
	init() throws {
		Window.create(800, by: 450, title: "Example - Textures - Rectangle")
		Application.target(fps: 60)
		
		sprite = try Filesystem.file(at: "scarfy.png", from: .module).loadAsTexture()
		spritesheet = Spritesheet(of: 1, by: 6, within: sprite.size.toInt)
		
		position = Vector2(350, 280)
		frame = Rectangle(at: 0, 0, size: sprite.width.toFloat / 6, sprite.height.toFloat)
	}
	
	mutating func update() {
		timeline.update()
		
		timeline.every(timesPerSecond: framesPerSecond) {
			index += 1
			if index > 5 {
				index = 0
			}
			
			frame = spritesheet.frame(of: index, 0)
		}
		
		if Keyboard.right.isPressed {
			framesPerSecond += 1
			framesPerSecond.maximum(of: SpritesheetExample.ANIMATION_SPEED_RANGE.upperBound)
		} else if Keyboard.left.isPressed {
			framesPerSecond -= 1
			framesPerSecond.minimum(of: SpritesheetExample.ANIMATION_SPEED_RANGE.lowerBound)
		}
	}
	
	func draw() {
		Renderer2D.texture(sprite, at: 15, 40)
		WireRenderer2D.rectangle(at: 15, 40, size: sprite.width, sprite.height, color: .lime)
//		DrawRectangleLines(15 + (int)frameRec.x, 40 + (int)frameRec.y, (int)frameRec.width, (int)frameRec.height, RED);

//		DrawText("FRAME SPEED: ", 165, 210, 10, DARKGRAY);
//		DrawText(TextFormat("%02i FPS", framesSpeed), 575, 210, 10, DARKGRAY);
//		DrawText("PRESS RIGHT/LEFT KEYS to CHANGE SPEED!", 290, 240, 10, DARKGRAY);

//		for (int i = 0; i < MAX_FRAME_SPEED; i++)
//		{
//			if (i < framesSpeed) DrawRectangle(250 + 21*i, 205, 20, 20, RED);
//			DrawRectangleLines(250 + 21*i, 205, 20, 20, MAROON);
//		}
		Renderer2D.texture(sprite, from: frame, at: position)

//		DrawText("(c) Scarfy sprite by Eiden Marsal", screenWidth - 200, screenHeight - 20, 10, GRAY);
	}
	
}
