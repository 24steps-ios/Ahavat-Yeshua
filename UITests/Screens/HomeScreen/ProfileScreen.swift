//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/12/25.
//
import XCTest

final class ProfileScreen:  BaseScreen {
    // MARK: Static Texts
    lazy var profileScreenTitle: XCUIElement = app.navigationBars["Profile"]
 
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileScreenTitle.assertExistence()
        return self
    }
}
