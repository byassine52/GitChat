//
//  ChatBubble.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/05.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import SwiftUI

struct ChatBubble: View {

	let message: Message

	var body: some View {
		HStack {
			if message.isOwn {
				Spacer()
			}
			ZStack {
				// TODO: Change RoundedRectangle to app asset.
				RoundedRectangle(cornerRadius: 4)
					.fill(message.isOwn ? Color(asset: Asset.ownChatBubble) : Color(asset: Asset.otherChatBubble))
					// .frame(width: .infinity)

				HStack {
					Text(message.text)
						.multilineTextAlignment(.leading)
						.foregroundColor(Color.white)
					Spacer()
				}.padding(12)
			}
			.frame(maxWidth: 250)
			if !message.isOwn {
				Spacer()
			}
		}
	}
}

struct ChatBubble_Previews: PreviewProvider {
	static var previews: some View {
		ChatBubble(message: .previewMessage)
	}
}
