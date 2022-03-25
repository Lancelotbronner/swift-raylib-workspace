
//MARK: - Tiled

struct Tiled {
	private init() { }
}

enum TiledError: Error {
	case invalidLayerType(String)
}
