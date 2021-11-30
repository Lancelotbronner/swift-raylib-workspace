//
//  File 2.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Filesystem

public struct Filesystem {
	
	//MARK: Constants
	
	public static var current: Directory {
		Directory(at: GetWorkingDirectory().toString)
	}
	
	//MARK: Methods
	
	@inlinable public static func file(at path: Path) -> File {
		File(at: path)
	}
	
	@inlinable public static func directory(at path: Path) -> File {
		File(at: path)
	}
	
}

// TODO: Implement file load callbacks
// void SetLoadFileDataCallback(LoadFileDataCallback callback);
// void SetSaveFileDataCallback(SaveFileDataCallback callback);
// void SetLoadFileTextCallback(LoadFileTextCallback callback);
// void SetSaveFileTextCallback(SaveFileTextCallback callback);
