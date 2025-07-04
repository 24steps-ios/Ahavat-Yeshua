//
//  UMulti_selectionScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class MultiSelectionScreen:  BaseScreen {
    
    // MARK:StaticText
    
    lazy var multiSelectionScreenTextTitle: XCUIElement = app.staticTexts["Select Activities"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
    func thenMultiSelectionScreenAppears() {
        multiSelectionScreenTextTitle.assertExistence()
    }
    
    // MARK: When
    func whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
