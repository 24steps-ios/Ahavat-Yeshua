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
    lazy var profileBackButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    // MARK: Buttons
    lazy var editButton: XCUIElement = app.buttons["Edit"]
    lazy var saveButton: XCUIElement = app.buttons["Save"]
    lazy var clearAllButton: XCUIElement = app.buttons["Clear All"]
    
    // MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    
    // MARK: Picker Wheels
    lazy var monthPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 0)
    lazy var dayPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 1)
    lazy var yearPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 2)
    
    // MARK: Given
    @discardableResult
    func givenISetDOB(for user: TestUser) -> Self {
        if let dob = user.dob {
            monthPickerWheel.adjust(toPickerWheelValue: dob.month)
            dayPickerWheel.adjust(toPickerWheelValue: dob.day)
            yearPickerWheel.adjust(toPickerWheelValue: dob.year)
        }
        return self
    }
    
    @discardableResult
    func givenISetName(_ user: TestUser) -> Self {
        whenITapEditButton()
        nameTextField.assertExistenceAndTap()
        cleanText()
        nameTextField.typeText(user.userName)
        whenITapSaveButton()
        return self 
    }
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        title.assertExistence()
        return self 
    }
    
    // MARK: When
    func whenITapEditButton() {
        editButton.assertExistenceAndTap()
    }
    
    func whenITapSaveButton() {
        saveButton.assertExistenceAndTap()
    }
    
    func whenTapProfileBackButton() {
        profileBackButton.assertExistenceAndTap()
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

