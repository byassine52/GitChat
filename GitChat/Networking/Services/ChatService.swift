//
//  ChatService.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

struct ChatService: NetworkingServiceProtocol {

	/// Send message to follower.
	/// - Parameters:
	///   - message: Message.
	///   - follower: Follower.
	/// - Returns: Sending result flag (`true` for success, and `false` for failure).
	func send(message: Message, to follower: Follower) async throws {
		let duration = UInt64(1_000_000_000)
		try await Task.sleep(nanoseconds: duration)
	}

}
