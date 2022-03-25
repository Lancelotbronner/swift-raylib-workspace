import Raylib

struct MapRenderer {
	
	//MARK: Properties
	
	private let renderer: Renderer2D
	
	//MARK: Initialization
	
	fileprivate init(using renderer: Renderer2D) {
		self.renderer = renderer
	}
	
	//MARK: Methods
	
	func layout(of map: Map) {
		
	}
	
	func decorations(of map: Map) {
		
	}
	
	func enemy(_ entity: ActiveMap.Enemy) {
		
	}
	
	func item(_ entity: ActiveMap.Item) {
		
	}
	
}

//MARK: - Integration

extension Renderer2D {
	
	var map: MapRenderer {
		.init(using: self)
	}
	
}
