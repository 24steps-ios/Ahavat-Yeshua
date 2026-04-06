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
    func givenISetName(_ userName: String){
        whenITapEditButton()
        nameTextField.assertExistence()
        cleanText()
        nameTextField.typeText(userName)
        whenITapSaveButton()
    }
    
    //MARK: Then
    func thenMyProfileTitleAppears() {
        title.assertExistence()
    }
    
    //MARK: When
    func whenITapClearAllButton(){
        clearAllButton.assertExistenceAndTap()
    }
    
    func whenITapEditButton(){
        editButton.assertExistenceAndTap()
    }
    
    func whenITapSaveButton(){
        saveButton.assertExistenceAndTap()
    }
    
    func whenITapBackProfileButton(){
        backProfileButton.assertExistenceAndTap()
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

