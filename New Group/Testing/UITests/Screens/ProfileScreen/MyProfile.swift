//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/3/26.
//
import XCTest

final class MyProfile: BaseScreen {
    //MARK: Buttons
    lazy var editButton: XCUIElement = app.buttons["Edit"]
    lazy var clearAllButton: XCUIElement = app.buttons["Clear All"]
    lazy var saveButton: XCUIElement = app.buttons["Save"]
    
    //MARK: Navigation Bar Elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Profile"]
    lazy var backProfileButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    //MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    
    
    
    //MARK: Given
    @discardableResult
    func givenISetName(_ userName: String) -> Self  {
        whenITapEditButton()
        nameTextField.assertExistenceAndTap()
        cleanText()
        nameTextField.typeText(userName)
        whenITapSaveButton()
        return self
    }
    
    //MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        title.assertExistence()
        return self
    }
    
    //MARK: When
    func whenITapClearAllButton() {
        clearAllButton.assertExistenceAndTap()
    }
    
    @discardableResult
    func whenITapEditButton() -> Self {
        editButton.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenITapSaveButton() -> Self {
        saveButton.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenITapBackProfileButton() -> Self {
        backProfileButton.assertExistenceAndTap()
        return self
    }
    
    //MARK: Helpers
    func cleanText() {
        if let currentValue = nameTextField.value as? String {
            let deleteString = String(
                repeating: XCUIKeyboardKey.delete.rawValue,
                count: currentValue.count
            )
            nameTextField.typeText(deleteString)
        }
    }
}

