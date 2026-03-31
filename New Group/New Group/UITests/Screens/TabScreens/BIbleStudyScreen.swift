//
//  BIbleStudyScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/13/26.
//
import XCTest

final class BibleStudyScreen: BaseScreen {
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts[" Growth in Faith"]
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self  {
        bibleStudyScreenTitle.assertExistence()
     return self
    }
}


