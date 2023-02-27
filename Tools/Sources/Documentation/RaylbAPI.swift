//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-02-27.
//

struct RaylibAPI: Codable {
	let defines: [Define]
	let structs: [Struct]
	let aliases: [Declaration]
	let enums: [Enum]
	let callbacks: [Function]
	let functions: [Function]
}

struct Define: Codable {
	let type: String
	let name: String
	let description: String
	let value: ValueOfDefine
}

enum ValueOfDefine: Codable {
	case double(Double)
	case string(String)

	var description: String {
		switch self {
		case let .double(value): return value.description
		case let .string(value): return value
		}
	}
}

struct Struct: Codable {
	let name: String
	let description: String
	let fields: [Declaration]
}

struct Declaration: Codable {
	let type: String
	let name: String
	let description: String
}

struct Enum: Codable {
	let name: String
	let description: String
	let values: [Case]
}

struct Case: Codable {
	let name: String
	let value: Int
	let description: String
}

struct Function: Codable {
	let name: String
	let description: String
	let returnType: String
	let params: [Parameter]?
}

struct Parameter: Codable {
	let type: String
	let name: String
}
