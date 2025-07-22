//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/3/25.
//
import XCTest

final class MyProfile: BaseScreen {
    // MARK: Predicates
    let dobFieldPredicate = NSPredicate(format: "label CONTAINS 'Date of Birth'")
    
    // MARK: Navigation Bar elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Profile"]
    lazy var profileBackButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    // MARK: Buttons
    lazy var editButton: XCUIElement = app.buttons["Edit"]
    lazy var saveButton: XCUIElement = app.buttons["Save"]
    lazy var clearAllButton: XCUIElement = app.buttons["Clear All"]
    lazy var dobButton: XCUIElement = app.buttons.element(matching: dobFieldPredicate)
    lazy var doneButton: XCUIElement = app.buttons["Done"]
    
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
            whenIEditMyProfile {
                dobButton.assertExistenceAndTap()
                
                monthPickerWheel.adjust(toPickerWheelValue: dob.month)
                dayPickerWheel.adjust(toPickerWheelValue: dob.day)
                yearPickerWheel.adjust(toPickerWheelValue: dob.year)
                
                doneButton.assertExistenceAndTap()
            }
        }
        return self
    }
    
    @discardableResult
    func givenISetName(_ user: TestUser) -> Self {
        whenIEditMyProfile {
            nameTextField.assertExistenceAndTap()
            cleanText()
            nameTextField.typeText(user.userName)
        }
        return self 
    }
    
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        title.assertExistence()
        return self 
    }
    
    @discardableResult
    func thenUserDOBAppears(for user: TestUser) -> Self {
        if let dob = user.dob {
            let dobId: String = "Date of Birth: \(dob.month) \(dob.day), \(dob.year)"
            let dobLabel: XCUIElement = app.staticTexts[dobId]
            dobLabel.assertExistence()
        }
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
    
    @discardableResult
    func whenITapClearAllButton() -> Self {
        clearAllButton.assertExistenceAndTap()
        return self
    }
    
    private func whenIEditMyProfile(action:() -> Void) {
        whenITapEditButton()
        action()
        whenITapSaveButton()
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

