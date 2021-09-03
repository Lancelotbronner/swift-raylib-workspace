//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Text

public final class Text: ExpressibleByStringLiteral {
	
	//MARK: Properties
	
	private let buffer: UnsafeMutableBufferPointer<CChar>
	
	//MARK: Computed Properties
	
	private var pointer: UnsafeMutablePointer<CChar>! {
		buffer.baseAddress
	}
	
	public var length: Int {
		TextLength(pointer).toInt
	}
	
	//MARK: Initialization
	
	public init(capacity: Int = 0) {
		precondition(capacity >= 0, "Capacity cannot be negative")
		buffer = .init(
			start: MemAlloc(capacity.toInt32)
				.bindMemory(to: CChar.self, capacity: capacity),
			count: capacity)
	}
	
	public init(stringLiteral value: StaticString) {
		buffer = .init(
			start: .init(OpaquePointer(value.utf8Start)),
			count: value.utf8CodeUnitCount + 1)
	}
	
	deinit {
		MemFree(pointer)
	}
	
	//MARK: Methods
	
	public func copy() -> Text {
		let new = Text()
		TextCopy(new.pointer, pointer)
	}
	
}

//int TextCopy(char *dst, const char *src);
//bool TextIsEqual(const char *text1, const char *text2);
//unsigned int TextLength(const char *text);
//const char *TextFormat(const char *text, ���);
//const char *TextSubtext(const char *text, int position, int length);
//char *TextReplace(char *text, const char *replace, const char *by);
//char *TextInsert(const char *text, const char *insert, int position);
//const char *TextJoin(const char **textList, int count, const char *delimiter);
//const char **TextSplit(const char *text, char delimiter, int *count);
//void TextAppend(char *text, const char *append, int *position);
//int TextFindIndex(const char *text, const char *find);
//const char *TextToUpper(const char *text);
//const char *TextToLower(const char *text);
//const char *TextToPascal(const char *text);
//int TextToInteger(const char *text);
//char *TextToUtf8(int *codepoints, int length);
