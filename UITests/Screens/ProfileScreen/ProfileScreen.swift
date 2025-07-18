//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/3/25.
//

import XCTest

final class ProfileScreen: BaseScreen {
    // MARK: Button
    lazy var profileScreenButton: XCUIElement = app.navigationBars["Profile"]
    lazy var personalButton: XCUIElement = app.buttons["Personal"]
    lazy var churchButton: XCUIElement = app.buttons["Church"]
    
    // MARK: Enums
    enum Button: String {
        case personalButton = "Personal"
        case churchButton = "Church"
    }

    
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileScreenButton.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserNameMatch(_ userName: String)  -> Self {
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
    func whenINavigateToMyChurch() -> Self {
        churchButton.tap()
        return self
    }
    @discardableResult // enum: MyChurch AND MyPersonal
    func whenINavigate(to button: Button ) -> Self {
        let button: XCUIElement = app.buttons[button.rawValue]
        button.tap()
        return self
    }
}
