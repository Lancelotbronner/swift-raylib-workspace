import Raylib

//MARK: - Resources

struct Resources {
	private init() { }
	
	//MARK: Properties
	
	private static var dummyTexture = Image
		.color(size: 1, by: 1, of: .magenta)
		.convertToTexture()
	
	private static var textures: [String : Texture] = [:]
	
	//MARK: Texture Methods
	
	static func load(texture path: String) {
		textures[path] = Filesystem
			.file(at: "Textures/\(path)", from: .module)
			.loadAsTexture()
	}
	
	static func texture(_ path: String) -> Texture {
		guard let tmp = textures[path] else {
			print("Could not find texture '\(path)'")
			return dummyTexture
		}
		return tmp
	}
	
	
}
