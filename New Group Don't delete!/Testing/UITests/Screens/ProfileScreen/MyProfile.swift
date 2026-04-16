//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/3/26.
//
import XCTest

final class MyProfile: BaseScreen {
    // MARK: Buttons
    lazy var editButton: XCUIElement = app.buttons["Edit"]
    lazy var clearAllButton: XCUIElement = app.buttons["Clear All"]
    lazy var saveButton: XCUIElement = app.buttons["Save"]
    lazy var doneButton: XCUIElement = app.buttons["Done"]
    lazy var dateOfBirthButton: XCUIElement = app.buttons.matching(dateOfBirthPredicate).firstMatch
    
    //MARK: Predicates
   let dateOfBirthPredicate: NSPredicate = .init(format: "label CONTAINS 'Date of Birth:'")
    
    // MARK: Navigation Bar Elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Profile"]
    lazy var backProfileButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    //MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    lazy var emailTextField: XCUIElement = app.textFields.element(boundBy: 1)
    
    // MARK: Picker Wheels
    lazy var monthPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 0) //.adjust(toPickerWheelValue: "May")
    lazy var dayPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 1)
    lazy var yearPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 2)
    
    //MARK: Static Texts
    lazy var dobField: XCUIElement = app.staticTexts["Date of Birth: August 7, 1976"]
    
    
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
        cleanNameText()
        nameTextField.typeText(user.userName)
        whenITapSaveButton()
        return self
    }
    
    @discardableResult
    func givenISetEmail(_ user: TestUser) -> Self  {
        whenITapEditButton()
        emailTextField.assertExistenceAndTap()
        cleanEmailText()
       // emailTextField.typeText(user.email)
        whenITapSaveButton()
        return self
    }
    
    //MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        title.assertExistence()
        return self
    }
    
    @discardableResult
    func thenDOBAppears() -> Self {
        dateOfBirthButton.assertExistence()
        return self
    }
    
    @discardableResult
    func thenFieldContainsDOB() -> Self {
        dobField.assertExistence()
        return self
    }
    
  // MARK: When
//    @discardableResult
//    func thenUserEmailMatch(_ user: TestUser) -> Self {
//        let email: XCUIElement = app.staticTexts[user.email]
//        email.assertExistence()
//        return self
//    }
    
      @discardableResult
    func whenITapDateOfBirthButton() -> Self {
        dateOfBirthButton.assertExistenceAndTap()
        return self
    }
        
        @discardableResult
        func whenITapClearAllButton() -> Self {
            clearAllButton.assertExistenceAndTap()
            return self
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
        func whenITapDoneButton() -> Self {
            doneButton.assertExistenceAndTap()
            return self
        }
        
        @discardableResult
        func whenITapBackProfileButton() -> Self {
            backProfileButton.assertExistenceAndTap()
            return self
        }
        
        // MARK: Helpers
        func cleanNameText() {
            if let currentValue = nameTextField.value as? String {
                let deleteString = String(
                    repeating: XCUIKeyboardKey.delete.rawValue,
                    count: currentValue.count
                )
                nameTextField.typeText(deleteString)
            }
        }
        
        func cleanEmailText() {
            if let currentValue = emailTextField.value as? String {
                let deleteString = String(
                    repeating: XCUIKeyboardKey.delete.rawValue,
                    count: currentValue.count
                )
                emailTextField.typeText(deleteString)
            }
        }
    }
