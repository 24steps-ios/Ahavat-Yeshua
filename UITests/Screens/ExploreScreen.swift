//
//  Untitled.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class ExploreScreen: BaseScreen {
    lazy var exploreScreenQuizCell: XCUIElement = app.buttons["📖 Faith-Based Quiz"]
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen()  -> Self {
        exploreScreenQuizCell.assertExistence()
        return self
    }
}
