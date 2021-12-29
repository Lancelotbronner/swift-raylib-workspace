//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-29.
//

print(ToolCommand.helpMessage(columns: 40))
print()

var tmp: String? = nil
while tmp == nil {
	print("> ", terminator: "")
	tmp = readLine()
}

ToolCommand.main(tmp!.components(separatedBy: .whitespaces))
