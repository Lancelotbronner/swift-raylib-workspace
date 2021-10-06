//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Monitor

public struct Monitor {
	
	//MARK: Static Computed Properties
	
	@inlinable
	public static var count: Int {
		GetMonitorCount().toInt
	}
	
	public static var all: [Monitor] {
		(0 ..< GetMonitorCount()).map(Monitor.init)
	}
	
	public static var current: Monitor {
		Monitor(GetCurrentMonitor())
	}
	
	//MARK: Properties
	
	internal let id: Int32
	
	//MARK: Computed Properties
	
	public var name: String {
		GetMonitorName(id).toString
	}
	
	public var position: Vector2f {
		GetMonitorPosition(id)
	}
	
	public var width: Int {
		GetMonitorWidth(id).toInt
	}
	
	public var height: Int {
		GetMonitorHeight(id).toInt
	}
	
	public var physicalWidth: Int {
		GetMonitorPhysicalWidth(id).toInt
	}
	
	public var physicalHeight: Int {
		GetMonitorPhysicalHeight(id).toInt
	}
	
	public var refreshRate: Int {
		GetMonitorRefreshRate(id).toInt
	}
	
	public var scaleDPI: Vector2f {
		GetWindowScaleDPI()
	}
	
	//MARK: Initialization
	
	internal init(_ id: Int32) {
		self.id = id
	}
	
}
