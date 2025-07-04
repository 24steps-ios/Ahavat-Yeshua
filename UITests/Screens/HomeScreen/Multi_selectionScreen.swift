//
//  UMulti_selectionScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class Multi_selectionScreen:  BaseScreen {
    
    // MARK:StaticText
    
    lazy var multi_selectionScreenTextTitle: XCUIElement = app.staticTexts["Select Activities"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
    func thenMulti_selectionScreenAppears() {
        multi_selectionScreenTextTitle.assertExistence()
    }
    
    // MARK: When
    func whenITapBackButton() {
        app.buttons["Back"].assertExistenceAndTap()
    }
}
