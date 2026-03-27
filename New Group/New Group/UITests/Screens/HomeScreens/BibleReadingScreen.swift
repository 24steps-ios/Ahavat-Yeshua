//
//  BibleReadingScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/23/26.
//
import XCTest

final class BibleReadingScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var bibleReadingButton: XCUIElement = app.buttons["Bible Reading"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: TextFields
    lazy var bibleReadingSearchField: XCUIElement = app.textFields.firstMatch
    
    // MARK: Then
    func thenScreenAppears() {
        bibleReadingSearchField.assertExistence()
    }
    
    // MARK: When
    func  whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
