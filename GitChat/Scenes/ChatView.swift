//
//  ChatView.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/04.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import SwiftUI

struct ChatView: View {

	/// Viewmodel
	@ObservedObject var viewModel: ViewModel
	/// Message text.
	@State private var messageText: String = ""

	var body: some View {
		VStack {
			messageList
			textFieldSection
		}
		.navigationTitle(viewModel.follower.username)
		.navigationBarTitleDisplayMode(.inline)
	}
}

extension ChatView {
	var messageList: some View {
		List(viewModel.messages) { message in
			ChatBubble(message: message)
		}
		.background(.white)
		.scrollContentBackground(.hidden)
	}

	var textFieldSection: some View {
		HStack {
			TextField(L10n.Chat.textfieldPlaceholder, text: $messageText)
				.padding(10)
				.overlay(
					Capsule()
						.stroke(Color.secondary)
				)
				.onSubmit {
					send(text: messageText)
				}
			Button(L10n.Chat.send) {
				send(text: messageText)
			}
			.disabled(messageText.isEmpty)
		}
		.padding(.horizontal, 16)
		.background(.clear)
	}
}

extension ChatView {
	func send(text: String) {
		Task {
			await viewModel.send(message: .init(text: text, author: AppDefault.currentUser))
			messageText = ""
		}
	}
}

struct ChatView_Previews: PreviewProvider {
	static var previews: some View {
		ChatView(viewModel: .init(follower: .previewUser, messages: Message.previewData))
	}
}

extension ChatView {
	/// View model.
	@MainActor
	class ViewModel: ObservableObject {
		/// Follower.
		@Published var follower: Follower
		/// Messages.
		@Published var messages = [Message]()

		init(follower: Follower, messages: [Message] = []) {
			self.follower = follower
		}

		/// Send a message.
		/// - Parameter message: Message.
		func send(message: Message) async {
			do {
				messages.append(message)
				try await ChatService().send(message: message, to: follower)
				let replyMessage = Message(text: "\(message.text) \(message.text)", author: follower)
				messages.append(replyMessage)
			} catch {
				// TODO: Change to logging mechanism.
				print("Error: \(error.localizedDescription)")
			}
		}
	}
}
