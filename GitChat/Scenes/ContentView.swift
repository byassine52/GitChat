//
//  ContentView.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/02.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import SwiftUI

struct ContentView: View {

	@ObservedObject var viewModel: ViewModel

	@State private var error: NetworkingError?
	@State private var showAlert = false

	var body: some View {
		NavigationStack {
			List(viewModel.followers) { follower in
				NavigationLink(destination: ChatView(viewModel: .init(follower: follower))) {
					FollowerCellView(follower: follower)
				}
			}
			.onAppear {
				Task {
					do {
						try await viewModel.fetchFollowers()
					} catch {
						self.error = error as? NetworkingError
						showAlert = true
					}
				}
			}
			.alert(isPresented: $showAlert, error: error) { _ in
				Button("OK") {
					// Handle acknowledgement.
				}
			} message: { error in
				Text(error.errorDescription ?? L10n.Common.retry)
			}
			.navigationTitle(L10n.Home.title)
		}
	}
}

extension ContentView {
	/// View model.
	@MainActor
	class ViewModel: ObservableObject {
		/// Followers.
		@Published var followers: [Follower]

		init(followers: [Follower] = []) {
			self.followers = followers
		}

		/// Fetch followers.
		func fetchFollowers() async throws {
			followers = try await FollowerService().fetchFollowers(for: AppDefault.currentUser.login)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(viewModel: ContentView.previewData)
	}
}
