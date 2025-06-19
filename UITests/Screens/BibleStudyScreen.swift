//
//  BibleScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/18/25.
//
import XCTest
final class BibleStudyScreen: BaseScreen {
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts[" Growth in Faith"]
    
    // MARK: THEN
    func thenIAssertScreen(){
        bibleStudyScreenTitle.assertExistence()
    }
}


