import Raylib

@main struct Spaceshooter: App {
	
	//MARK: Computed Properties
	
	var initial: Scene {
		LoadingScene()
	}
	
	//MARK: Initialization
	
	init() {
		Window.create(1280, by: 800, title: "Spaceshooter")
		
		// Configure the application
		Application.clearQuitShortcut()
		Application.target(fps: 60)
		
		// Load a window icon
//		var appIcon = Filesystem
//			.file(at: "Resources/Icons/AppIcon.png", from: .module)
//			.loadAsImage()
//		appIcon.convert(to: .rgba8)
//		appIcon.replace(.black, with: .clear)
//		appIcon.replace(Color.rgb(136, 136, 136), with: .clear)
//		Window.set(icon: appIcon)
		
		// Configure rendering defaults
		Renderer.background = .black
		Renderer.textColor = .white
	}
	
}
