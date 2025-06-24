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
    @discardableResult
    func thenIAssertScreen() -> Self {
        homeScreenTitle.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertBibleReadingGroupAppears() -> Self {
        bibleReadingText.assertExistence()
        return self
    }
    
    // MARK: When
    @discardableResult
    func whenINavigateToBibleReadingScreen() -> Self {
        bibleReadingText.assertExistenceAndTap()
        return self
    }
}
