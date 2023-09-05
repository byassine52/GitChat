//
//  Helper.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/04.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

/// JSON structure.
enum JSON {

	static let dateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
		return formatter
	}()

	/// Encoder.
	static let encoder: JSONEncoder = {
		let encoder = JSONEncoder()
		encoder.dateEncodingStrategy = .iso8601
		encoder.outputFormatting = .prettyPrinted
		return encoder
	}()

	/// Decoder.
	static let decoder: JSONDecoder = {
		let decoder = JSONDecoder()
		// decoder.dateDecodingStrategy = .iso8601
		decoder.dateDecodingStrategy = .formatted(dateFormatter)
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		return decoder
	}()

}
