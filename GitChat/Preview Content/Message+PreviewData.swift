//
//  Message+PreviewData.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import Foundation

extension Message {
	static var previewMessage: Self = Self(text: "Hello", author: .previewUser)

	static var previewData: [Self] = [
		Self(text: "Hello", author: .previewUser),
		Self(text: "HelloHello", author: .anotherUser)
	]
}
