//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-17.
//

import CRaylib

public typealias PixelFormat = CRaylib.PixelFormat

//MARK: - Pixel Format

extension PixelFormat {
	
	//MARK: Uncompressed Formats
	
	/// Grayscale, no alpha, 8 bpp, uncompressed
	@_transparent public static var grayscale: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_GRAYSCALE
	}
	
	/// Grayscale, 8-bit alpha, 16 bpp, uncompressed
	@_transparent public static var grayscaleWithAlpha: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA
	}
	
	/// RGB, no alpha, 16 bpp, uncompressed
	@_transparent public static var r5g6b5: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R5G6B5
	}
	
	/// RGB, no alpha, 24 bpp, uncompressed
	@_transparent public static var rgb8: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R8G8B8
	}
	
	/// RGBA, 1-bit alpha, 16 bpp, uncompressed
	@_transparent public static var rgb5a1: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
	}
	
	/// RGBA, 4-bit alpha, 16 bpp, uncompressed
	@_transparent public static var rgba4: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R4G4B4A4
	}
	
	/// RGBA, 8-bit alpha, 32 bpp, uncompressed
	@_transparent public static var rgba8: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
	}
	
	/// red float, no alpha, 32 bpp, uncompressed
	@_transparent public static var r32f: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R32
	}
	
	/// RGB floats, no alpha, 96 bpp, uncompressed
	@_transparent public static var rgb32f: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R32G32B32
	}
	
	/// RGBA floats, 32-bit alpha, 128 bpp, uncompressed
	@_transparent public static var rgba32f: PixelFormat {
		PIXELFORMAT_UNCOMPRESSED_R32G32B32A32
	}
	
	//MARK: Compressed Formats
	
	/// RGB, no alpha, 4 bpp, DXT1 compression
	@_transparent public static var dxt1: PixelFormat {
		PIXELFORMAT_COMPRESSED_DXT1_RGB
	}
	
	/// RGBA, 1-bit alpha, 4 bpp, DXT1 compression
	@_transparent public static var dxt1WithAlpha: PixelFormat {
		PIXELFORMAT_COMPRESSED_DXT1_RGBA
	}
	
	/// RGBA, 4-bit alpha, 8 bpp, DXT3 compression
	@_transparent public static var dxt3WithAlpha: PixelFormat {
		PIXELFORMAT_COMPRESSED_DXT3_RGBA
	}
	
	/// RGBA, 4-bit alpha, 8 bpp, DXT5 compression
	@_transparent public static var dxt5WithAlpha: PixelFormat {
		PIXELFORMAT_COMPRESSED_DXT5_RGBA
	}
	
	/// RGB, no alpha, 4 bpp, ETC1 compression
	@_transparent public static var etc1: PixelFormat {
		PIXELFORMAT_COMPRESSED_ETC1_RGB
	}
	
	/// RGB, no alpha, 4 bpp, ETC2 compression
	@_transparent public static var etc2: PixelFormat {
		PIXELFORMAT_COMPRESSED_ETC2_RGB
	}
	
	/// RGB, 4-bit alpha, 8 bpp, ETC2 compression
	@_transparent public static var etc2WithAlpha: PixelFormat {
		PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA
	}
	
	/// RGB, no alpha, 4 bpp, PVRT compression
	@_transparent public static var pvrt: PixelFormat {
		PIXELFORMAT_COMPRESSED_PVRT_RGB
	}
	
	/// RGBA, 1-bit alpha, 4 bpp, PVRT compression
	@_transparent public static var pvrtWithAlpha: PixelFormat {
		PIXELFORMAT_COMPRESSED_PVRT_RGBA
	}
	
	/// RGBA, alpha, 8 bpp, ASTC 4x4 compression
	@_transparent public static var astc4: PixelFormat {
		PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
	}
	
	/// RGBA, alpha, 2 bpp, ASTC 8x8 compression
	@_transparent public static var astc8: PixelFormat {
		PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA
	}
	
}
