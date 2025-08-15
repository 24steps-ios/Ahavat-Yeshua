//
//  BaseScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

open class BaseScreen {
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: Typealias
    typealias aid = AccessibilityIdentifiers
    
    // MARK: Buttons
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: When
    @discardableResult
    func whenITapBackButton() -> Self {
        backButton.assertExistenceAndTap()
        return self
    }
}
