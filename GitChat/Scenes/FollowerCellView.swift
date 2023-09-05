//
//  FollowerCellView.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/03.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import SwiftUI

/// Follower cell view.
struct FollowerCellView: View {

	/// Follower.
	@State var follower: Follower
	/// Avatar image side length.
	let avatarSideLength: CGFloat = 44

	var body: some View {
		HStack {
			AsyncImage(url: follower.avatarUrl) { image in
				image.resizable()
					.scaledToFit()
			} placeholder: {
				ProgressView().progressViewStyle(.circular)
			}
			.frame(width: avatarSideLength, height: avatarSideLength)
			Text(follower.username)
			Spacer()
		}
	}
}

struct FollowerCellView_Previews: PreviewProvider {
	static var previews: some View {
		FollowerCellView(follower: .previewUser)
			.previewLayout(.sizeThatFits)
	}
}
