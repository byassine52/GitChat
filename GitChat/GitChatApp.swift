//
//  GitChatApp.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/02.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import SwiftUI

@main
struct GitChatApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView(viewModel: .init())
		}
	}
}
