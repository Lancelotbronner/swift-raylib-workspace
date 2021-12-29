//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-29.
//

import ArgumentParser

struct ToolCommand: ParsableCommand {
	
	//MARK: Constants
	
	static let configuration = CommandConfiguration(
		commandName: "devtools",
		abstract: "A command-line utility to help during development of the Swift Raylib package",
		discussion: "Able to automatically update and build the raylib library, produce updated documentation, etc.",
		version: "1.0.0",
		subcommands: [
			DocumentationCommand.self,
		]
	)
	
	//MARK: Properties
	
}
