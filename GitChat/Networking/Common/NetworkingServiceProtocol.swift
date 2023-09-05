//
//  NetworkingServiceProtocol.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

/// Networking service protocol.
protocol NetworkingServiceProtocol {
}

extension NetworkingServiceProtocol {
	/// Base endpoint string.
	var baseEndpoint: String {
		"https://api.github.com"
	}
}
