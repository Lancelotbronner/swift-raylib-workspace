import Raylib

struct LoadingScene: Scene {
	
	//MARK: Properties
	
	private static var isLoadingComplete = false
	private var timeline = Timeline()
	
	private var step = 0
	private var total = 0
	
	private var texturesToLoad = [
		("tilemap.png", "tilemap"),
		("Icons/attack.png", "attack"),
	]
	
	private var soundsToLoad = [
		"Sounds/click-1.ogg",
		"Sounds/coins-handling-1.ogg",
		"Sounds/door-open-1.ogg",
		"Sounds/pot-metal-1.ogg",
		"Sounds/creature-1.ogg",
		"Sounds/creature-2.ogg",
		"Sounds/woosh-1.ogg",
		"Sounds/knife-slice-1.ogg",
		"Sounds/chop-1.ogg",
		"Sounds/power-up-2.ogg",
	]
	
	//MARK: Computed Properties
	
	private var progress: Double {
		step.toDouble / total.toDouble
	}
	
	//MARK: Initialization
	
	init() {
		total = texturesToLoad.count + soundsToLoad.count
	}
	
	//MARK: Events
	
	mutating func load() {
		Task {
			let packs = Filesystem.directory(at: "Resources/Packs", from: .module).contents
			
			for item in packs {
				if item["pack.json"].isFile {
					do {
						let pack = try Pack(at: item.directory)
						Resources.packs.append(pack)
					} catch {
						print("PACK: Failed to load \(item.last?.toString ?? "<invalid>"): \(error)")
					}
				}
			}
			
			LoadingScene.isLoadingComplete = true
		}
	}
	
	func wake() {
		Renderer.pointSize = 20
		Renderer.textColor = .raywhite
	}
	
	//MARK: Updating
	
	mutating func update() -> SceneAction {
		timeline.update()
		
		if LoadingScene.isLoadingComplete {
			return .replace(with: MenuScene(background: .init(name: "tmp", spawn: .zero, size: .zero, packs: [:], tileset: [], layers: [], lootables: [], doors: [], enemies: [])))
		}
		
//		switch true {
//		case !texturesToLoad.isEmpty:
//			let (path, name) = texturesToLoad.removeLast()
//			let texture = Filesystem
//				.file(at: path, from: .module)
//				.loadAsTexture()
//			Resources.textures.register(texture, for: name)
//
//		case !soundsToLoad.isEmpty:
//			let sound = soundsToLoad.removeLast()
//			//			Filesystem.file(at: "Resources/\(sound)").loadAsSound()
//
//		default:
//			//			return .replace(with: MenuScene(background: <#Map#>))
//			return .continue
//		}
		
		return .continue
	}
	
	//MARK: Drawing
	
	func draw() {
		// Loading messages
		
		Renderer2D.text(center: "Loading...")
		
		// Animation to let users know the app hasn't frozen
		
		indicator(using: renderer, at: Window.size - 40, radius: 12, dots: 12, speed: 5, color: .white)
		
		// Progress bar
		
		let progressWidth = (Window.width * 3 / 5).toDouble * progress
		Renderer2D.rectangle(at: Window.width / 5, Window.height / 2, size: progressWidth.toInt, 5, color: .raywhite)
		WireRenderer2D.rectangle(at: Window.width / 5, Window.height / 2, size: progressWidth.toInt, 5, thickness: 2, color: .white)
	}
	
	func indicator(using renderer: Renderer2D, at position: Vector2f, radius radiusOfIndicator: Float, dots numberOfDots: Int, speed: Float, color: Color) {
		let offsetPerDot = 2 * Float.pi / numberOfDots.toFloat
		let radiusOfDot = radiusOfIndicator / 10
		let center = position + radiusOfDot
		
		for i in 0 ..< numberOfDots {
			let offset = i.toFloat * offsetPerDot
			let x = center.x + radiusOfIndicator * offset.sin()
			let y = center.y - radiusOfIndicator * offset.cos()
			let growth = max(0, (Time.lifetime.toFloat * speed - offset).sin())
			let radius = radiusOfDot + growth * radiusOfDot
			Renderer2D.circle(at: x.toInt, y.toInt, radius: radius.toFloat, color: color)
		}
	}
	
}
