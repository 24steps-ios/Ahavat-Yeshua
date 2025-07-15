//
//  BibleScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class BibleStudyScreen: BaseScreen {
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts[" Growth in Faith"]
    
    // MARK: Then
    func thenIAssertScreen() {
        bibleStudyScreenTitle.assertExistence()
    }
}
