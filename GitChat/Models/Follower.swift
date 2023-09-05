//
//  Follower.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/03.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

struct Follower: Codable, Identifiable {
	let avatarUrl: URL?
	// let eventsUrl: URL
	// let followersUrl: URL
	// let followingUrl: URL
	// let gistsUrl: URL
	// let gravatarId: String
	// let htmlUrl: URL
	let id: Int
	let login: String
	// let nodeId: String
	// let organizationsUrl: URL
	// let receivedEventsUrl: URL
	// let reposUrl: URL
	// let siteAdmin: Bool
	// let starredUrl: URL
	// let subscriptionsUrl: URL
	// let type: String
	// let url: URL
}

// MARK: - Extensions

extension Follower {
	/// Username.
	var username: String {
		"@\(self.login)"
	}
}
