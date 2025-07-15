//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/2/25.
//
import XCTest

final class ProfileScreen:  BaseScreen {
    // MARK: Button
    lazy var profileScreenButton: XCUIElement = app.navigationBars["Profile"]
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileScreenButton.assertExistence()
        return self
    }
}

