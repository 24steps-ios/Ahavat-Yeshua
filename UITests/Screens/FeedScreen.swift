//
//  FeedScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//

import XCTest

final class FeedScreen: BaseScreen {
    lazy var feedScreenSearchFeild: XCUIElement = app.textFields.firstMatch
    
    // MARK: Then
    func thenIAssertScreen() {
        feedScreenSearchFeild.assertExistence()
    }
}
