//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Trace

public struct Trace {
	
	//MARK: Logging Methods
	
	/// Log a message of the specified level
	@inlinable public static func log(_ level: TraceLevel, _ message: String) {
		// TraceLog(level.rawValue.toInt32, message)
		// FIXME: Find a way to call TraceLog
		print("[\(level)] \(message)")
	}
	
	/// Trace logging, intended for internal use only
	@inlinable public static func trace(_ message: String) {
		log(.trace, message)
	}
	
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	@inlinable public static func debug(_ message: String) {
		log(.debug, message)
	}
	
	/// Info logging, used for program execution info
	@inlinable public static func info(_ message: String) {
		log(.info, message)
	}
	
	/// Warning logging, used on recoverable failures
	@inlinable public static func warning(_ message: String) {
		log(.warning, message)
	}
	
	/// Error logging, used on unrecoverable failures
	@inlinable public static func error(_ message: String) {
		log(.error, message)
	}
	
	/// Fatal logging, used to abort program
	@inlinable public static func fatal(_ message: String) {
		log(.fatal, message)
	}
	
	//MARK: Configuration Methods
	
	/// Display all logs
	@inlinable public static func enable() {
		SetTraceLogLevel(0)
	}
	
	/// Disable logging
	@inlinable public static func disable() {
		SetTraceLogLevel(7)
	}
	
	/// Set the current threshold (minimum) log level
	@inlinable public static func configure(threshold level: TraceLevel) {
		SetTraceLogLevel(level.rawValue.toInt32)
	}
	
	// TODO: Implement trace callback
	// void SetTraceLogCallback(TraceLogCallback callback);
	
}

//MARK: - Trace Level

public enum TraceLevel: Int, Comparable {
	
	//MARK: Cases
	
	/// Trace logging, intended for internal use only
	case trace = 1
	
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	case debug = 2
	
	/// Info logging, used for program execution info
	case info = 3
	
	/// Warning logging, used on recoverable failures
	case warning = 4
	
	/// Error logging, used on unrecoverable failures
	case error = 5
	
	/// Fatal logging, used to abort program
	case fatal = 6
	
	//MARK: Operators
	
	public static func < (lhs: TraceLevel, rhs: TraceLevel) -> Bool {
		lhs.rawValue < rhs.rawValue
	}
	
}
