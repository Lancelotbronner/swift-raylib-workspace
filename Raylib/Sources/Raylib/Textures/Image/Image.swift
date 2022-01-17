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
	
	// TODO: LoadImageFromMemory
	// Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);
	
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
	
	/// Premultiply alpha channel
	@inlinable public func premultiply() {
		withMutablePointer(ImageAlphaPremultiply)
	}
	
	/// Compute all mipmap levels for a provided image
	@inlinable public func mipmap() {
		withMutablePointer(ImageMipmaps)
	}
	
	/// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
	@inlinable public func dither(_ rbpp: Int, _ gbpp: Int, _ bbpp: Int, _ abpp: Int) {
		withMutablePointer { ptr in
			ImageDither(ptr, rbpp.toInt32, gbpp.toInt32, bbpp.toInt32, abpp.toInt32)
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
	
	/// Get image pixel color at (x, y) position
	@inlinable public func pixel(at x: Int, _ y: Int) -> Color {
		GetImageColor(implementation.raylib, x.toInt32, y.toInt32).toSwift
	}
	
	/// Get image alpha border rectangle
	@inlinable public func border(alpha threshold: Float) -> Rectangle {
		GetImageAlphaBorder(implementation.raylib, threshold).toSwift
	}
	
	//MARK: Transform Methods
	
	/// Flip image vertically
	@inlinable public func flipVertically() {
		withMutablePointer(ImageFlipVertical)
	}
	
	/// Flip image horizontally
	@inlinable public func flipHorizontally() {
		withMutablePointer(ImageFlipHorizontal)
	}
	
	/// Rotate image clockwise 90deg
	@inlinable public func rotateRight() {
		withMutablePointer(ImageRotateCW)
	}
	
	/// Rotate image counter-clockwise 90deg
	@inlinable public func rotateLeft() {
		withMutablePointer(ImageRotateCCW)
	}
	
	//MARK: Color Methods
	
	/// Modify image color: tint
	@inlinable public func tint(with color: Color) {
		withMutablePointer { ptr in
			ImageColorTint(ptr, color.toRaylib)
		}
	}
	
	/// Modify image color: invert
	@inlinable public func invert() {
		withMutablePointer(ImageColorInvert)
	}
	
	/// Modify image color: grayscale
	@inlinable public func grayscale() {
		withMutablePointer(ImageColorGrayscale)
	}
	
	/// Modify image color: contrast (-100 to 100)
	@inlinable public func contrast(of ratio: Float) {
		withMutablePointer { ptr in
			ImageColorContrast(ptr, ratio)
		}
	}
	
	/// Modify image color: brightness (-255 to 255)
	@inlinable public func brightness(of ratio: Int) {
		withMutablePointer { ptr in
			ImageColorBrightness(ptr, ratio.toInt32)
		}
	}
	
	/// Modify image color: replace color
	@inlinable public func replace(_ color: Color, with other: Color) {
		withMutablePointer { ptr in
			ImageColorReplace(ptr, color.toRaylib, other.toRaylib)
		}
	}
	
	//MARK: Draw Methods
	
	/// Clear alpha channel to desired color
	@inlinable public func clear(alpha threshold: Float, to color: Color) {
		withMutablePointer { ptr in
			ImageAlphaClear(ptr, color.toRaylib, threshold)
		}
	}
	
	/// Apply alpha mask to image
	@inlinable public func mask(using alpha: Image) {
		withMutablePointer { ptr in
			ImageAlphaMask(ptr, alpha.toRaylib)
		}
	}
	
	@inlinable public func render(draw: (RendererImage) -> Void) {
		draw(RendererImage(for: self))
	}
	
	//MARK: Utilities
	
	@usableFromInline func withMutablePointer<Result>(_ body: (UnsafeMutablePointer<CRaylib.Image>) throws -> Result) rethrows -> Result {
		try withUnsafePointer(to: implementation.raylib) { ptr in
			try body(UnsafeMutablePointer(mutating: ptr))
		}
	}
	
}

// TODO: Image color data
/*
 RLAPI Color *LoadImageColors(Image image);                                                               // Load color data from image as a Color array (RGBA - 32bit)
 RLAPI void UnloadImageColors(Color *colors);                                                             // Unload color data loaded with LoadImageColors()
 */

// TODO: Image color palette
/*
 RLAPI Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);                         // Load colors palette from image as a Color array (RGBA - 32bit)
 RLAPI void UnloadImagePalette(Color *colors);                                                            // Unload colors palette loaded with LoadImagePalette()
 */
