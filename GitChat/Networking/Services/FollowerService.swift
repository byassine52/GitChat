//
//  FollowerService.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

struct FollowerService: NetworkingServiceProtocol {

	/// Generate URL.
	/// - Parameter login: GitHub login string for requested user.
	/// - Returns: URL for requested login
	func generateURL(for login: String) -> URL? {
		let urlString = "\(baseEndpoint)/users/\(login)/followers"
		let url = URL(string: urlString)
		return url
	}

	/// Fetch followers.
	/// - Parameter login: GitHub login string for requested user.
	/// - Returns: Followers array. If failed it will throw an error.
	func fetchFollowers(for login: String) async throws -> [Follower] {
		guard let url = generateURL(for: login) else {
			throw NetworkingError.invalidURL
		}
		let (data, response) = try await URLSession.shared.data(from: url)
		if let response = response as? HTTPURLResponse, !(200..<300).contains(response.statusCode) {
			throw NetworkingError.generalError
		}
		let result = try JSON.decoder.decode([Follower].self, from: data)
		return result
	}
}
