//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-06.
//

import CRaylib

public struct Image {
	
	//MARK: Properties
	
	@usableFromInline var implementation: ImplementationOfImage
	
	//MARK: Computed Properties
	
	@inlinable public var width: Int {
		implementation.raylib.width.toInt
	}
	
	@inlinable public var height: Int {
		implementation.raylib.height.toInt
	}
	
	@inlinable public var size: Vector2f {
		Vector2f(implementation.raylib.width.toFloat, implementation.raylib.height.toFloat)
	}
	
	@inlinable public var mipmaps: Int {
		implementation.raylib.mipmaps.toInt
	}
	
	@inlinable public var format: PixelFormat {
		PixelFormat(raylib: implementation.raylib.format)
	}
	
	//MARK: Initialization
	
	@usableFromInline init(_ implementation: ImplementationOfImage) {
		self.implementation = implementation
	}
	
	/// Create an image from text (default font)
	@inlinable public init(of text: String, size: Int, color: Color) {
		implementation = ImageText(text, size.toInt32, color.toRaylib).toManaged
	}
	
	/// Create an image from text (custom sprite font)
	@inlinable public init(of text: String, size: Int, color: Color, spacing: Int, font: Font) {
		implementation = ImageTextEx(font.toRaylib, text, size.toFloat, spacing.toFloat, color.toRaylib).toManaged
	}
	
	//MARK: Conversion Methods
	
	/// Upload to GPU
	@inlinable public func convertToTexture() -> Texture {
		LoadTextureFromImage(implementation.raylib).toManaged
	}
	
	/// Convert image data to desired format
	@inlinable public func convert(to format: PixelFormat) {
		withMutablePointer { ptr in
			ImageFormat(ptr, format.toRaylib.toInt32)
		}
	}
	
	//MARK: Resize Methods
	
	/// Resize image according to the specified algorithm
	@inlinable public func resize(to width: Int, _ height: Int, using algorithm: ResizeAlgorithm) {
		withMutablePointer { ptr in
			switch algorithm {
			case .bicubic: ImageResize(ptr, width.toInt32, height.toInt32)
			case .nearest: ImageResizeNN(ptr, width.toInt32, height.toInt32)
			case let .fill(offset, color): ImageResizeCanvas(ptr, width.toInt32, height.toInt32, offset.x.toInt32, offset.y.toInt32, color.toRaylib)
			}
		}
	}
	
	/// Convert image to power-of-two
	@inlinable public func resizeToNextPowerOfTwo(fill: Color) {
		withMutablePointer { ptr in
			ImageToPOT(ptr, fill.toRaylib)
		}
	}
	
	/// Crop an image to a defined rectangle
	@inlinable public func crop(to frame: Rectangle) {
		withMutablePointer { ptr in
			ImageCrop(ptr, frame.toRaylib)
		}
	}
	
	/// Crop image depending on alpha value
	@inlinable public func cropAlpha(under threshold: Float) {
		withMutablePointer { ptr in
			ImageAlphaCrop(ptr, threshold)
		}
	}
	
	//MARK: Copy Methods
	
	/// Create an image duplicate (useful for transformations)
	@inlinable public func copy() -> Image {
		ImageCopy(implementation.raylib).toManaged.toSwift
	}
	
	/// Create an image duplicate (useful for transformations)
	@inlinable public func copy(_ area: Rectangle, into other: Image) -> Image {
		ImageCopy(implementation.raylib).toManaged.toSwift
	}
	
	//MARK: Reading Methods
	
	/// Create an image from another image piece
	@inlinable public func sub(_ area: Rectangle) -> Image {
		ImageFromImage(implementation.raylib, area.toRaylib).toManaged.toSwift
	}
	
	//MARK: Transform Methods
	
	//MARK: Draw Methods
	
	//MARK: Utilities
	
	@usableFromInline func withMutablePointer<Result>(_ body: (UnsafeMutablePointer<CRaylib.Image>) throws -> Result) rethrows -> Result {
		try withUnsafePointer(to: implementation.raylib) { ptr in
			try body(UnsafeMutablePointer(mutating: ptr))
		}
	}
	
}

/*
 RLAPI void ImageAlphaClear(Image *image, Color color, float threshold);                                  // Clear alpha channel to desired color
 RLAPI void ImageAlphaMask(Image *image, Image alphaMask);                                                // Apply alpha mask to image
 RLAPI void ImageAlphaPremultiply(Image *image);                                                          // Premultiply alpha channel
 RLAPI void ImageMipmaps(Image *image);                                                                   // Compute all mipmap levels for a provided image
 RLAPI void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);                            // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
 RLAPI void ImageFlipVertical(Image *image);                                                              // Flip image vertically
 RLAPI void ImageFlipHorizontal(Image *image);                                                            // Flip image horizontally
 RLAPI void ImageRotateCW(Image *image);                                                                  // Rotate image clockwise 90deg
 RLAPI void ImageRotateCCW(Image *image);                                                                 // Rotate image counter-clockwise 90deg
 RLAPI void ImageColorTint(Image *image, Color color);                                                    // Modify image color: tint
 RLAPI void ImageColorInvert(Image *image);                                                               // Modify image color: invert
 RLAPI void ImageColorGrayscale(Image *image);                                                            // Modify image color: grayscale
 RLAPI void ImageColorContrast(Image *image, float contrast);                                             // Modify image color: contrast (-100 to 100)
 RLAPI void ImageColorBrightness(Image *image, int brightness);                                           // Modify image color: brightness (-255 to 255)
 RLAPI void ImageColorReplace(Image *image, Color color, Color replace);                                  // Modify image color: replace color
 RLAPI Color *LoadImageColors(Image image);                                                               // Load color data from image as a Color array (RGBA - 32bit)
 RLAPI Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);                         // Load colors palette from image as a Color array (RGBA - 32bit)
 RLAPI void UnloadImageColors(Color *colors);                                                             // Unload color data loaded with LoadImageColors()
 RLAPI void UnloadImagePalette(Color *colors);                                                            // Unload colors palette loaded with LoadImagePalette()
 RLAPI Rectangle GetImageAlphaBorder(Image image, float threshold);                                       // Get image alpha border rectangle
 RLAPI Color GetImageColor(Image image, int x, int y);                                                    // Get image pixel color at (x, y) position
 */
