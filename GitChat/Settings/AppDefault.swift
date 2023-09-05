//
//  Default.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

/// App default values.
enum AppDefault {

	/// Current user.
	static let currentUser = Follower(
		avatarUrl: URL(string: "https://avatars.githubusercontent.com/u/583231?v=4"),
		id: 583_231,
		login: "octocat"
	)

}
