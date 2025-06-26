//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//

import XCTest

final class HomeScreen: BaseScreen {
    // MARK: Static Texts
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleReadingText: XCUIElement = app.staticTexts["Bible Reading"]
    
    // MARK: Then
    func thenIAssertScreen() {
        homeScreenTitle.assertExistence()
    }
    func thenIAssertBibleReadingGroupAppears() {
        bibleReadingText.assertExistence()
    }
    
    // MARK: When
    func whenINavigateToBibleReadingScreen() {
        bibleReadingText.assertExistenceAndTap()
    }
}
