//
//  BibleReadingScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/26/25.
//
import XCTest

final class BibleReadingScreen:  BaseScreen {
    
    // MARK: Buttons
    lazy var showVerseButton: XCUIElement = app.buttons["Show Verse"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
   func thenScreenAppears()  {
        showVerseButton.assertExistence()
    }
    
    // MARK: When
    func whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}

