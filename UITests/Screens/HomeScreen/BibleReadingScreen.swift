//
//  BibleReadingScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/23/25.
//

import XCTest

final class BibleReadingScreen: BaseScreen {
    // Buttons
    lazy var showVerseButton: XCUIElement = app.buttons["Show Verse"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
    func thenScreenAppears() {
        app.buttons["Show Verse"].assertExistence()
    }
    
    // MARK: When
    func whenITapBackButton() {
        app.buttons["Back"].assertExistenceAndTap()
    }
}
