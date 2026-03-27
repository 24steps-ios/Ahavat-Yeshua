//
//  FeedScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/13/26.
//
import XCTest

final class FeedScreen: BaseScreen {
    lazy var feedScreenSearchField: XCUIElement = app.textFields["Search users or posts"]
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self {
        feedScreenSearchField.assertExistence()
     return self
    }
}
