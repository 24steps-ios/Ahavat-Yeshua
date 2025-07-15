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

    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        showVerseButton.assertExistence()
        return self
    }
}

