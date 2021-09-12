//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

import Raylib

@main
struct ImageGeneration: App {
	
	init() {
		Window.create(800, by: 450, title: "Examples - Textures - Image Generation")
		Application.targetFPS = 60
		
//		Image verticalGradient = GenImageGradientV(screenWidth, screenHeight, RED, BLUE);
//		Image horizontalGradient = GenImageGradientH(screenWidth, screenHeight, RED, BLUE);
//		Image radialGradient = GenImageGradientRadial(screenWidth, screenHeight, 0.0f, WHITE, BLACK);
//		Image checked = GenImageChecked(screenWidth, screenHeight, 32, 32, RED, BLUE);
//		Image whiteNoise = GenImageWhiteNoise(screenWidth, screenHeight, 0.5f);
//		Image perlinNoise = GenImagePerlinNoise(screenWidth, screenHeight, 50, 50, 4.0f);
//		Image cellular = GenImageCellular(screenWidth, screenHeight, 32);
//
//		Texture2D textures[NUM_TEXTURES] = { 0 };
//
//		textures[0] = LoadTextureFromImage(verticalGradient);
//		textures[1] = LoadTextureFromImage(horizontalGradient);
//		textures[2] = LoadTextureFromImage(radialGradient);
//		textures[3] = LoadTextureFromImage(checked);
//		textures[4] = LoadTextureFromImage(whiteNoise);
//		textures[5] = LoadTextureFromImage(perlinNoise);
//		textures[6] = LoadTextureFromImage(cellular);
//
//		// Unload image data (CPU RAM)
//		UnloadImage(verticalGradient);
//		UnloadImage(horizontalGradient);
//		UnloadImage(radialGradient);
//		UnloadImage(checked);
//		UnloadImage(whiteNoise);
//		UnloadImage(perlinNoise);
//		UnloadImage(cellular);
	}
	
	update() {
//		if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT) || IsKeyPressed(KEY_RIGHT))
//		{
//			currentTexture = (currentTexture + 1)%NUM_TEXTURES; // Cycle between the textures
//		}
	}
	
	draw() {
//		DrawTexture(textures[currentTexture], 0, 0, WHITE);
//
//		  DrawRectangle(30, 400, 325, 30, Fade(SKYBLUE, 0.5f));
//		  DrawRectangleLines(30, 400, 325, 30, Fade(WHITE, 0.5f));
//		  DrawText("MOUSE LEFT BUTTON to CYCLE PROCEDURAL TEXTURES", 40, 410, 10, WHITE);
//
//		  switch(currentTexture)
//		  {
//			  case 0: DrawText("VERTICAL GRADIENT", 560, 10, 20, RAYWHITE); break;
//			  case 1: DrawText("HORIZONTAL GRADIENT", 540, 10, 20, RAYWHITE); break;
//			  case 2: DrawText("RADIAL GRADIENT", 580, 10, 20, LIGHTGRAY); break;
//			  case 3: DrawText("CHECKED", 680, 10, 20, RAYWHITE); break;
//			  case 4: DrawText("WHITE NOISE", 640, 10, 20, RED); break;
//			  case 5: DrawText("PERLIN NOISE", 630, 10, 20, RAYWHITE); break;
//			  case 6: DrawText("CELLULAR", 670, 10, 20, RAYWHITE); break;
//			  default: break;
//		  }
	}
	
}
