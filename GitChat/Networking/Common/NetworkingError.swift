//
//  NetworkingError.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

/// Networking errors.
enum NetworkingError: Error {
	case generalError
	case invalidURL
	case rateLimitReached
}

extension NetworkingError: LocalizedError {
	var errorDescription: String? {
		switch self {
			case .generalError:
				return L10n.NetworkingError.generalError

			case .invalidURL:
				return L10n.NetworkingError.invalidURL

			case .rateLimitReached:
				return L10n.NetworkingError.rateLimitReached
		}
	}
}
