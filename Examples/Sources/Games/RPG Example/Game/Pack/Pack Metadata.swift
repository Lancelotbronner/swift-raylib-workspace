
//MARK: - Metadata

extension Pack {
	struct Metadata: Codable {
		
		//MARK: Properties
		
		/// The pack's identifier
		var identifier: Identifier<Pack>
		
		/// The pack's name
		var name: String
		
		/// The pack's description
		var summary: String
		
		//MARK: Methods
		
		func log(_ message: String) {
			print("[Pack \(identifier)] \(message)")
		}
		
	}
}
