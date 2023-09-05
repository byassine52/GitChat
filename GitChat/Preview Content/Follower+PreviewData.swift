//
//  Follower+PreviewData.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/03.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

extension Follower {

	static var previewUser = Follower(
		avatarUrl: URL(string: "https://avatars.githubusercontent.com/u/583231?v=4"),
		id: 583_231,
		login: "octocat"
	)

	static var anotherUser = Follower(
		avatarUrl: URL(string: "https://avatars.githubusercontent.com/u/1?v=4"),
		id: 1,
		login: "mojombo"
	)

	static var previewArray: [Self] = loadPreviewData("followers.json")

	private static func loadPreviewData(_ filename: String) -> [Follower] {
		guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
			return []
		}

		do {
			let data = try Data(contentsOf: url)
			let result = try JSON.decoder.decode([Follower].self, from: data)
			return result
		} catch {
			// TODO: Change to logging mechanism.
			print(error)
			return []
		}
	}

}
