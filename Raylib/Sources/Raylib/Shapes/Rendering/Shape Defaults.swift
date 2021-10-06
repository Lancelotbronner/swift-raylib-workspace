//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

//MARK: - Shape Default Values

extension Renderer {
	
	//MARK: Computed Properties
	
	public static var shapeColor: Color {
		get { currentShapeColor }
		set { currentShapeColor = newValue }
	}
	
//	public static var shapeThickness: Float {
//		get { currentShapeThickness }
//		set { currentShapeThickness = newValue }
//	}
	
}

//MARK: Stores

private var currentShapeThickness: Float = 1
private var currentShapeColor = Color.gray
