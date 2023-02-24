
//MARK: - Spritesheet

public struct Spritesheet {
	
	//MARK: Properties
	
	public let rows: Int
	public let columns: Int
	public let padding: Thickness<Int>
	public let spacing: Vector2i
	public let tileSize: Vector2i
	
	//MARK: Initialization
	
	public init(of rows: Int, by columns: Int, within size: Vector2i, padding: Thickness<Int> = 0, spacing: Vector2i = 0) {
		self.rows = rows
		self.columns = columns
		self.padding = padding
		self.spacing = spacing
		
		let horizontal = size.x - padding.left - padding.right - spacing.x
		let vertical = size.y - padding.top - padding.bottom - spacing.y
		self.tileSize = Vector2i(horizontal / columns, vertical / rows)
	}
	
	public init(of rows: Int, by columns: Int, tileSize: Vector2i, padding: Thickness<Int> = 0, spacing: Vector2i = 0) {
		self.rows = rows
		self.columns = columns
		self.padding = padding
		self.spacing = spacing
		self.tileSize = tileSize
	}
	
	//MARK: Methods
	
	@inlinable public func coordinates(of x: Int, _ y: Int) -> Vector2i {
		let horizontal = padding.left + x * spacing.x
		let vertical = padding.bottom + y * spacing.y
		return Vector2i(horizontal, vertical)
	}
	
	@inlinable public func frame(of x: Int, _ y: Int) -> Rectangle {
		Rectangle(at: coordinates(of: x, y).toFloat, size: tileSize.toFloat)
	}
	
}
