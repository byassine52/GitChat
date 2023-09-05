//
//  Message.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

/// Message.
struct Message: Identifiable {
	let id: UUID = UUID()
	let text: String
	let time: Date = Date()
	let author: Follower
}

extension Message {
	var isOwn: Bool {
		author.id == AppDefault.currentUser.id
	}
}
