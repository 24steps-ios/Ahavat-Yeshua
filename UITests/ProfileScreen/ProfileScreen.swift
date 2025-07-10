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
    func thenIAssertScreen() {
        personalButton.assertExistence()
    }
  
    func thenUserNameMatch(_ userName: String) {
        let userName: XCUIElement = app.staticTexts[userName]
        userName.assertExistence()
    }
    
    // MARK: When
    func whenINavigateToMyProfile() {
        personalButton.tap()
    }
    
    func whenITapBackButton(){
        backButton.tap()
    }
}
