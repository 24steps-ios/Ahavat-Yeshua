//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/3/25.
//

import XCTest

final class ProfileScreen: BaseScreen {
    lazy var personalButton: XCUIElement = app.buttons["Personal"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self {
        personalButton.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserNameMatch(_ userName: String) -> Self {
        let userName: XCUIElement = app.staticTexts[userName]
        userName.assertExistence()
        return self
    }
    
    // MARK: When
    @discardableResult
    func whenINavigateToMyProfile() -> Self {
        personalButton.tap()
        return self
    }
    
    @discardableResult
    func whenITapBackButton() -> Self {
        backButton.tap()
        return self
    }
}
