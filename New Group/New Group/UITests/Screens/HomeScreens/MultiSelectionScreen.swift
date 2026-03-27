//
//  MultiSelectionScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class MultiSelectionScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var multiSelection: XCUIElement = app.buttons["Multi-selection"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Static Texts
    lazy var multiSelectionTitle: XCUIElement = app.staticTexts["Select Activities"]
    
    // MARK: Then
    func thenMultiSelectionScreenAppears() {
        multiSelectionTitle.assertExistence()
    }
    
    // MARK: When
    func  whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
