//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/3/25.
//
import XCTest

final class MyProfile: BaseScreen {
    // MARK: Navigation Bar elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Profile"]
    lazy var backButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    // MARK: Buttons
    lazy var editButton: XCUIElement = app.buttons["Edit"]
    lazy var saveButton: XCUIElement = app.buttons["Save"]
    lazy var clearAllButton: XCUIElement = app.buttons["Clear All"]
    
    // MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    
    // MARK: Given
    func givenISetName(_ userName: String) {
        whenITapEditButton()
        nameTextField.assertExistenceAndTap()
        cleanText()
        nameTextField.typeText(userName)
        whenITapSaveButton()
    }
   
    // MARK: When
    func whenITapEditButton() {
        editButton.assertExistenceAndTap()
    }
    
    func whenITapSaveButton() {
        saveButton.assertExistenceAndTap()
    }
    
    func whenTapBackButton() {
        backButton.assertExistenceAndTap()
    }
    
    // MARK: Helpers
    func cleanText() {
        // If there's existing text, delete it
         if let currentValue = nameTextField.value as? String {
             let deleteString = String(
                repeating: XCUIKeyboardKey.delete.rawValue,
                count: currentValue.count
             )
             nameTextField.typeText(deleteString)
         }
    }
}


