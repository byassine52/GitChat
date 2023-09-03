//
//  GitChatUITestsLaunchTests.swift
//  GitChatUITests
//
//  Created by Yassine ElBadaoui on 2023/09/02.
//  Copyright © 2023 ElBadaoui. All rights reserved.
//

import XCTest

final class GitChatUITestsLaunchTests: XCTestCase {
	// swiftlint:disable:previous balanced_xctest_lifecycle

	override class var runsForEachTargetApplicationUIConfiguration: Bool {
		true
	}

	override func setUpWithError() throws {
		continueAfterFailure = false
	}

	func testLaunch() throws {
		let app = XCUIApplication()
		app.launch()

		// Insert steps here to perform after app launch but before taking a screenshot,
		// such as logging into a test account or navigating somewhere in the app

		let attachment = XCTAttachment(screenshot: app.screenshot())
		attachment.name = "Launch Screen"
		attachment.lifetime = .keepAlways
		add(attachment)
	}
}
