//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-12.
//

import CRaylib

//MARK: - Image Renderer

public struct RendererImage {
	
	//MARK: Properties
	
	@usableFromInline var underlying: Image
	
	//MARK: Computed Properties
	
	@inlinable public var wire: WireRendererImage {
		WireRendererImage(for: underlying)
	}
	
	//MARK: Initialization
	
	@usableFromInline init(for image: Image) {
		underlying = image
	}
	
	//MARK: Canvas Methods
	
	/// Clear image background with given color
	@inlinable public func clear(to color: Color) {
		underlying.withMutablePointer { ptr in
			ImageClearBackground(ptr, color.toRaylib)
		}
	}
	
	//MARK: Pixel Methods
	
	/// Draw pixel within an image
	@inlinable public func pixel(at x: Int, _ y: Int, color: Color) {
		underlying.withMutablePointer { ptr in
			ImageDrawPixel(ptr, x.toInt32, y.toInt32, color.toRaylib)
		}
	}
	
	/// Draw pixel within an image (Vector version)
	@inlinable public func pixel(at position: Vector2i, color: Color) {
		pixel(at: position.x, position.y, color: color)
	}
	
	//MARK: Line Methods
	
	/// Draw line within an image
	@inlinable public func line(from sx: Int, _ sy: Int, to ex: Int, _ ey: Int, color: Color) {
		underlying.withMutablePointer { ptr in
			ImageDrawLine(ptr, sx.toInt32, sy.toInt32, ex.toInt32, ey.toInt32, color.toRaylib)
		}
	}
	
	/// Draw line within an image (Vector version)
	@inlinable public func line(from start: Vector2i, to end: Vector2i, color: Color) {
		line(from: start.x, start.y, to: start.x, start.y, color: color)
	}
	
	//MARK: Circle Methods
	
	/// Draw circle within an image
	@inlinable public func circle(at x: Int, _ y: Int, radius: Int, color: Color) {
		underlying.withMutablePointer { ptr in
			ImageDrawCircle(ptr, x.toInt32, y.toInt32, radius.toInt32, color.toRaylib)
		}
	}
	
	/// Draw circle within an image (Vector version)
	@inlinable public func circle(at center: Vector2i, radius: Int, color: Color) {
		circle(at: center.x, center.y, radius: radius, color: color)
	}
	
	/// Draw circle within an image (Shape version)
	@inlinable public func circle(_ shape: Circle, color: Color) {
		circle(at: shape.position.toInt, radius: shape.radius.toInt, color: color)
	}
	
	//MARK: Rectangle Methods
	
	/// Draw rectangle within an image
	@inlinable public func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color) {
		underlying.withMutablePointer { ptr in
			ImageDrawRectangle(ptr, x.toInt32, y.toInt32, width.toInt32, height.toInt32, color.toRaylib)
		}
	}
	
	/// Draw rectangle within an image (Vector version)
	@inlinable public func rectangle(at position: Vector2i, size: Vector2i, color: Color) {
		rectangle(at: position.x, position.y, size: size.x, size.y, color: color)
	}
	
	/// Draw rectangle within an image (Shape version)
	@inlinable public func rectangle(_ shape: Rectangle, color: Color) {
		rectangle(at: shape.position.toInt, size: shape.size.toInt, color: color)
	}
	
	//MARK: Image Methods
	
	/// Draw a source image within a destination image
	@inlinable public func image(from source: Rectangle, of other: Image, to destination: Rectangle, tint: Color = .white) {
		underlying.withMutablePointer { ptr in
			ImageDraw(ptr, other.toRaylib, source.toRaylib, destination.toRaylib, tint.toRaylib)
		}
	}
	
	//MARK: Text Methods
	
	/// Draw text within an image
	@inlinable public func text(_ string: String, at x: Int, _ y: Int, size: Int, spacing: Int, using font: Font, color: Color) {
		underlying.withMutablePointer { ptr in
			ImageDrawTextEx(ptr, font.toRaylib, string, Vector2f(x.toFloat, y.toFloat).toRaylib, size.toFloat, spacing.toFloat, color.toRaylib)
		}
	}
	
}
