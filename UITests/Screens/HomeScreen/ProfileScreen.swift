//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/2/25.
//
import XCTest

final class ProfileScreen:  BaseScreen {
    
    // MARK:Button
    lazy var profileScreenButton: XCUIElement = app.navigationBars["Profile"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
    func thenScreenAppears() {
        profileScreenButton.assertExistence()
    }
  
    
    // MARK: When
    func whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}

