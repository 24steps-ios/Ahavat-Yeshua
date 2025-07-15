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
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileScreenButton.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserNameMatch(_ userName: String) -> Self {
        let userName: XCUIElement = app.staticTexts[userName]
        userName.assertExistence()
        return self 
    }
    
    // MARK: When
    func whenINavigateToMyProfile() {
        personalButton.assertExistenceAndTap()
    }
}
