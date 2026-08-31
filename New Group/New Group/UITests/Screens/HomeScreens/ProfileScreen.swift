//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class ProfileScreen: BaseScreen {
    
    // MARK: Static Texts
    lazy var profile: XCUIElement = app.staticTexts["Profile"]
    lazy var profileTitel: XCUIElement = 
    app.staticTexts["Profile"]
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileTitel.assertExistence()
        return self
    }
}
