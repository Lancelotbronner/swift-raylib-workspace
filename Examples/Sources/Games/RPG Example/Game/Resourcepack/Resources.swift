
//MARK: - Image

enum Image {
	case tileset(x: Int, y: Int, tileset: Identifier<Tileset>)
	case reference(id: Identifier<Image>)
	case file(path: String)
}

//MARK: - Tileset

struct Tileset {
	let source: Image
	
}

//MARK: - Animation

struct Animation {
	let frames: [Image]
}
