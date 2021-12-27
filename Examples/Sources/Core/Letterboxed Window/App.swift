//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import Raylib

// FIXME: Missing rectangles
@main struct LetterboxedWindow: App {
	
	var target: RenderTexture
	var virtualMouse = Vector2f.zero
	var transformation = Vector2f.zero
	let game = Vector2f(640, 480)
	var scale: Float = 1
	var colors: [Color]
	
	init() {
		Window.enable(.resizeable, .vsync)
		Window.create(800, by: 450, title: "Example - Core - Letterboxed Window")
		Window.resize(minimum: 320, by: 240)
		Renderer.background = .black
		Application.target(fps: 60)
		
		target = RenderTexture(size: Window.width, by: Window.height)
		target.texture.filter(using: .bilinear)
		target.texture.wrap(using: .clamp)
		
		colors = [Color](repeat: 10, value: .random)
	}
	
	mutating func update() {
		scale = min(Window.width.toFloat / game.x, Window.height.toFloat / game.y)
		
		if Keyboard.space.isPressed {
			for i in colors.indices {
				colors[i] = .random
			}
		}
		
		transformation = -(Window.size - game * scale) / 2
		virtualMouse = ((Mouse.position + transformation) / scale)
			.clamped(between: .zero, and: game)
		
		Mouse.offset(by: transformation)
		Mouse.scale(to: .one / scale)
	}
	
	func render() {
		target.render {
			Renderer.clear(to: .darkGray)
			
			for i in colors.indices {
				Renderer2D.rectangle(at: 0, Window.height / 10 * i, size: Window.width, Window.height / 10, color: colors[i])
			}
			
			Renderer.textSize = 20
			Renderer2D.text("If executed inside a window,\nyou can resize the window,\nand see the screen scaling!", at: 10, 25, color: .white)
			Renderer2D.text("Default Mouse: [\(Mouse.x), \(Mouse.y)]", at: 350, 25, color: .green)
			Renderer2D.text("Virtual Mouse: [\(virtualMouse.x.toInt), \(virtualMouse.y.toInt)]", at: 350, 55, color: .yellow)
		}
	}
	
	func draw() {
		Renderer2D.texture(
			target.texture,
			from: Rectangle(at: .zero, size: Vector2f(game.x * scale, -game.y * scale)),
			at: .zero,
			to: Rectangle(at: -transformation, size: game * scale))
		
//		// Draw render texture to screen, properly scaled
//		DrawTexturePro(target.texture, (Rectangle){ 0.0f, 0.0f, (float)target.texture.width, (float)-target.texture.height },
//					   (Rectangle){ (GetScreenWidth() - ((float)gameScreenWidth*scale))*0.5f, (GetScreenHeight() - ((float)gameScreenHeight*scale))*0.5f,
//			(float)gameScreenWidth*scale, (float)gameScreenHeight*scale }, (Vector2){ 0, 0 }, 0.0f, WHITE);
	}
	
}

/*
 int main(void)
 {
 const int windowWidth = 800;
 const int windowHeight = 450;
 
 // Enable config flags for resizable window and vertical synchro
 SetConfigFlags(FLAG_WINDOW_RESIZABLE | FLAG_VSYNC_HINT);
 InitWindow(windowWidth, windowHeight, "raylib [core] example - window scale letterbox");
 SetWindowMinSize(320, 240);
 
 int gameScreenWidth = 640;
 int gameScreenHeight = 480;
 
 // Render texture initialization, used to hold the rendering result so we can easily resize it
 RenderTexture2D target = LoadRenderTexture(gameScreenWidth, gameScreenHeight);
 SetTextureFilter(target.texture, TEXTURE_FILTER_BILINEAR);  // Texture scale filter to use
 
 Color colors[10] = { 0 };
 for (int i = 0; i < 10; i++) colors[i] = (Color){ GetRandomValue(100, 250), GetRandomValue(50, 150), GetRandomValue(10, 100), 255 };
 
 SetTargetFPS(60);                   // Set our game to run at 60 frames-per-second
 //--------------------------------------------------------------------------------------
 
 // Main game loop
 while (!WindowShouldClose())        // Detect window close button or ESC key
 {
 // Update
 //----------------------------------------------------------------------------------
 // Compute required framebuffer scaling
 float scale = min((float)GetScreenWidth()/gameScreenWidth, (float)GetScreenHeight()/gameScreenHeight);
 
 if (IsKeyPressed(KEY_SPACE))
 {
 // Recalculate random colors for the bars
 for (int i = 0; i < 10; i++) colors[i] = (Color){ GetRandomValue(100, 250), GetRandomValue(50, 150), GetRandomValue(10, 100), 255 };
 }
 
 // Update virtual mouse (clamped mouse value behind game screen)
 Vector2 mouse = GetMousePosition();
 Vector2 virtualMouse = { 0 };
 virtualMouse.x = (mouse.x - (GetScreenWidth() - (gameScreenWidth*scale))*0.5f)/scale;
 virtualMouse.y = (mouse.y - (GetScreenHeight() - (gameScreenHeight*scale))*0.5f)/scale;
 virtualMouse = ClampValue(virtualMouse, (Vector2){ 0, 0 }, (Vector2){ (float)gameScreenWidth, (float)gameScreenHeight });
 
 // Apply the same transformation as the virtual mouse to the real mouse (i.e. to work with raygui)
 //SetMouseOffset(-(GetScreenWidth() - (gameScreenWidth*scale))*0.5f, -(GetScreenHeight() - (gameScreenHeight*scale))*0.5f);
 //SetMouseScale(1/scale, 1/scale);
 //----------------------------------------------------------------------------------
 
 // Draw
 //----------------------------------------------------------------------------------
 // Draw everything in the render texture, note this will not be rendered on screen, yet
 BeginTextureMode(target);
 ClearBackground(RAYWHITE);  // Clear render texture background color
 
 for (int i = 0; i < 10; i++) DrawRectangle(0, (gameScreenHeight/10)*i, gameScreenWidth, gameScreenHeight/10, colors[i]);
 
 DrawText("If executed inside a window,\nyou can resize the window,\nand see the screen scaling!", 10, 25, 20, WHITE);
 DrawText(TextFormat("Default Mouse: [%i , %i]", (int)mouse.x, (int)mouse.y), 350, 25, 20, GREEN);
 DrawText(TextFormat("Virtual Mouse: [%i , %i]", (int)virtualMouse.x, (int)virtualMouse.y), 350, 55, 20, YELLOW);
 EndTextureMode();
 
 BeginDrawing();
 ClearBackground(BLACK);     // Clear screen background
 
 // Draw render texture to screen, properly scaled
 DrawTexturePro(target.texture, (Rectangle){ 0.0f, 0.0f, (float)target.texture.width, (float)-target.texture.height },
 (Rectangle){ (GetScreenWidth() - ((float)gameScreenWidth*scale))*0.5f, (GetScreenHeight() - ((float)gameScreenHeight*scale))*0.5f,
 (float)gameScreenWidth*scale, (float)gameScreenHeight*scale }, (Vector2){ 0, 0 }, 0.0f, WHITE);
 EndDrawing();
 //--------------------------------------------------------------------------------------
 }
 
 // De-Initialization
 //--------------------------------------------------------------------------------------
 UnloadRenderTexture(target);        // Unload render texture
 
 CloseWindow();                      // Close window and OpenGL context
 //--------------------------------------------------------------------------------------
 
 return 0;
 }

 */
