//
//  ExploreScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/13/26.
//
import XCTest

final class ExploreScreen: BaseScreen {
    lazy var exploreScreenQuizCell: XCUIElement = app.staticTexts["📖 Faith-Based Quiz"]
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self {
        exploreScreenQuizCell.assertExistence()
        return self
    }
}


