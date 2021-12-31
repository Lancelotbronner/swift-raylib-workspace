//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-17.
//

import CRaylib

//MARK: - Pixel Format

public enum PixelFormat {
	
	//MARK: Cases
	
	/// Grayscale, no alpha, 8 bpp, uncompressed
	case w8
	
	/// Grayscale, 8-bit alpha, 16 bpp, uncompressed
	case wa8
	
	/// RGB, no alpha, 16 bpp, uncompressed
	case r5g6b5
	
	/// RGB, no alpha, 24 bpp, uncompressed
	case rgb8
	
	/// RGBA, 1-bit alpha, 16 bpp, uncompressed
	case rgb5a1
	
	/// RGBA, 4-bit alpha, 16 bpp, uncompressed
	case rgba4
	
	/// RGBA, 8-bit alpha, 32 bpp, uncompressed
	case rgba8
	
	/// red float, no alpha, 32 bpp, uncompressed
	case r32f
	
	/// RGB floats, no alpha, 96 bpp, uncompressed
	case rgb32f
	
	/// RGBA floats, no alpha, 112 bpp, uncompressed
	case rgba32f
	
	/// RGB, no alpha, 4 bpp, DXT1 compression
	case dxt1
	
	/// RGBA, 1-bit alpha, 4 bpp, DXT1 compression
	case dxt1WithAlpha
	
	/// RGBA, 4-bit alpha, 8 bpp, DXT3 compression
	case dxt3WithAlpha
	
	/// RGBA, 4-bit alpha, 8 bpp, DXT5 compression
	case dxt5WithAlpha
	
	/// RGB, no alpha, 4 bpp, ETC1 compression
	case etc1
	
	/// RGB, no alpha, 4 bpp, ETC2 compression
	case etc2
	
	/// RGB, 4-bit alpha, 8 bpp, ETC2 compression
	case etc2WithAlpha
	
	/// RGB, no alpha, 4 bpp, PVRT compression
	case pvrt
	
	/// RGBA, 1-bit alpha, 4 bpp, PVRT compression
	case pvrtWithAlpha
	
	/// RGBA, alpha, 8 bpp, ASTC 4x4 compression
	case astc4
	
	/// RGBA, alpha, 2 bpp, ASTC 8x8 compression
	case astc8
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: UInt32 {
		switch self {
		case .w8: return PIXELFORMAT_UNCOMPRESSED_GRAYSCALE.rawValue
		case .wa8: return PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA.rawValue
		case .r5g6b5: return PIXELFORMAT_UNCOMPRESSED_R5G6B5.rawValue
		case .rgb8: return PIXELFORMAT_UNCOMPRESSED_R8G8B8.rawValue
		case .rgb5a1: return PIXELFORMAT_UNCOMPRESSED_R5G5B5A1.rawValue
		case .rgba4: return PIXELFORMAT_UNCOMPRESSED_R4G4B4A4.rawValue
		case .rgba8: return PIXELFORMAT_UNCOMPRESSED_R8G8B8A8.rawValue
		case .r32f: return PIXELFORMAT_UNCOMPRESSED_R32.rawValue
		case .rgb32f: return PIXELFORMAT_UNCOMPRESSED_R32G32B32.rawValue
		case .rgba32f: return PIXELFORMAT_UNCOMPRESSED_R32G32B32A32.rawValue
		case .dxt1: return PIXELFORMAT_COMPRESSED_DXT1_RGB.rawValue
		case .dxt1WithAlpha: return PIXELFORMAT_COMPRESSED_DXT1_RGBA.rawValue
		case .dxt3WithAlpha: return PIXELFORMAT_COMPRESSED_DXT3_RGBA.rawValue
		case .dxt5WithAlpha: return PIXELFORMAT_COMPRESSED_DXT5_RGBA.rawValue
		case .etc1: return PIXELFORMAT_COMPRESSED_ETC1_RGB.rawValue
		case .etc2: return PIXELFORMAT_COMPRESSED_ETC2_RGB.rawValue
		case .etc2WithAlpha: return PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA.rawValue
		case .pvrt: return PIXELFORMAT_COMPRESSED_PVRT_RGB.rawValue
		case .pvrtWithAlpha: return PIXELFORMAT_COMPRESSED_PVRT_RGBA.rawValue
		case .astc4: return PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA.rawValue
		case .astc8: return PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA.rawValue
		}
	}
	
}
