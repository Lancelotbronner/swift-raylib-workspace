import Raylib

//MARK: - Resources

struct Assets {
	
	//MARK: Textures
	
	let background: Texture
	let characters: Texture
	let miscellaneous: Texture
	let projectiles: Texture
	let ships: Texture
	let ui: Texture
	
	//MARK: Loading
	
	init() {
		var dir = Filesystem
			.directory(at: "Resources", from: .module)
			.directory("Textures")
		
		background = dir.file("background.png").loadAsTexture()
		characters = dir.file("characters.png").loadAsTexture()
		miscellaneous = dir.file("miscellaneous.png").loadAsTexture()
		projectiles = dir.file("projectiles.png").loadAsTexture()
		ships = dir.file("ships.png").loadAsTexture()
		ui = dir.file("ui.png").loadAsTexture()
	}
	
}
