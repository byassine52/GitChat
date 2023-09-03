//
//  ContentView.swift
//  GitChat
//
//  Created by Yassine ElBadaoui on 2023/09/02.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Image(systemName: "globe")
				.imageScale(.large)
				.foregroundColor(.accentColor)
			Text("Hello, world!")
		}
		.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
