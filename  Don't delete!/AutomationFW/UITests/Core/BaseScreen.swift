//
//  BaseScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/13/26.
//
import XCTest

open class BaseScreen {
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: Buttons
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: When
    @discardableResult
    func  whenITapBackButton() -> Self {
        backButton.assertExistenceAndTap()
        return self
    }
}
