//
//  MyChurch.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/3/26.
//
import XCTest

final class MyChurch: BaseScreen {
    
    //MARK: Navigation Bar Elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Church"]
    lazy var backProfileButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    //MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        title.assertExistence()
        return self
    }
    
    @discardableResult
    func whenITapBackProfileButton() -> Self {
        backProfileButton.assertExistenceAndTap()
        return self
    }
}
