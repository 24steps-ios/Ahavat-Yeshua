//
//  BibleReadingScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/23/26.
//
import XCTest

final class BibleReadingScreen: BaseScreen {
    
    //MARK: StaticTexts
    lazy var bibleReading: XCUIElement = app.staticTexts["Bible Reading"]
    
    // MARK: TextFields
    lazy var bibleReadingSearchField: XCUIElement = app.textFields.firstMatch
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        bibleReadingSearchField.assertExistence()
        return self
    }
}
