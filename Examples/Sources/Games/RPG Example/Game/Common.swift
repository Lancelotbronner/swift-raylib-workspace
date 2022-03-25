import Raylib

struct Size: Codable {
	var width: Int
	var height: Int
	
	var toVector: Vector2i {
		.init(width, height)
	}
	
}

struct Padding: Codable {
	var top: Int
	var bottom: Int
	var left: Int
	var right: Int
}
