//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class ProfileScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Static Texts
    lazy var profileTitle: XCUIElement = app.staticTexts["Profile"]
    
    // MARK: Images
    lazy var profile: XCUIElement = app.images["person.circle"]
    
    // MARK: Then
    func thenProfileScreenAppears() {
        profileTitle.assertExistence()
    }
    
    // MARK: When
    func  whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
