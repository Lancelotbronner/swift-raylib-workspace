//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-18.
//

import CRaylib

extension Image {
	
	//MARK: Image Generation
	
	@inlinable public static func gradientV(size width: Int, _ height: Int, from top: Color, to bottom: Color) -> Image {
		.init(underlying: GenImageGradientV(width.toInt32, height.toInt32, top, bottom))
	}
	
	@inlinable public static func gradientH(size width: Int, _ height: Int, from left: Color, to right: Color) -> Image {
		.init(underlying: GenImageGradientH(width.toInt32, height.toInt32, left, right))
	}
	
	@inlinable public static func gradientRadial(size width: Int, _ height: Int, density: Float = 0, from inner: Color, to outer: Color) -> Image {
		.init(underlying: GenImageGradientRadial(width.toInt32, height.toInt32, density, inner, outer))
	}
	
	@inlinable public static func checked(size width: Int, _ height: Int, tiles tilesX: Int, _ tilesY: Int, colors color1: Color, _ color2: Color) -> Image {
		.init(underlying: GenImageChecked(width.toInt32, height.toInt32, tilesX.toInt32, tilesY.toInt32, color1, color2))
	}
	
	@inlinable public static func whiteNoise(size width: Int, _ height: Int, factor: Float) -> Image {
		.init(underlying: GenImageWhiteNoise(width.toInt32, height.toInt32, factor))
	}
	
//	@inlinable
//	public static func perlinNoise(size width: Int, _ height: Int, offset offsetX: Int, _ offsetY: Int, scale: Float) -> Image {
//		.init(underlying: GenImagePerlinNoise(width.toInt32, height.toInt32, offsetX.toInt32, offsetY.toInt32, scale))
//	}
	
	@inlinable public static func cellular(size width: Int, _ height: Int, cellSize: Int) -> Image {
		.init(underlying: GenImageCellular(width.toInt32, height.toInt32, cellSize.toInt32))
	}
	
}
