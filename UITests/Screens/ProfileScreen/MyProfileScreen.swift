//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/3/25.
//
import XCTest

final class MyProfileScreen: BaseScreen {
    
    // MARK: Predicates
    let dobFieldPredicate: NSPredicate = .init(format: "label BEGINSWITH 'Date of Birth'")
    
    // MARK: Navigation Bar elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Profile"]
    lazy var profileBackButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    // MARK: Buttons
    lazy var editButton: XCUIElement = app.buttons["Edit"]
    lazy var saveButton: XCUIElement = app.buttons["Save"]
    lazy var clearAllButton: XCUIElement = app.buttons["Clear All"]
    lazy var dobButton: XCUIElement = app.buttons.matching(dobFieldPredicate).firstMatch
    lazy var doneButton: XCUIElement = app.buttons["Done"]
    
    //    // MARK: Text Fields
    //    lazy var placeholderFullName: XCUIElement = app.textFields["Full Name"]
    lazy var placeholderEmail: XCUIElement = app.textFields["Enter your email"]
    
    // MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    
    // MARK: Piker Wheels
    lazy var monthPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 0)
    lazy var dayPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 1)
    lazy var yearPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 2)
    
    // MARK: Static Texts
    // let email = "test@test.com"
    lazy var emailField: XCUIElement = app.staticTexts["Email: test@test.com"]// if the label is just "Email:"
    lazy var errorMassage : XCUIElement = app.staticTexts["Please enter a valid email address."]
    
    // AFTER:
    
    // MARK: Given
    @discardableResult // if DOB EXIST WE DO THAT, IF DOB not exist skip!
    func givenISetDOB(for user: TestUser) ->Self {
        if let dob = user.dob {
            whenIEditMyProfileScreen {
                // whenITapEditButton()
                dobButton.assertExistenceAndTap()
                
                monthPickerWheel.adjust(toPickerWheelValue: dob.month)
                dayPickerWheel.adjust(toPickerWheelValue: dob.day)
                yearPickerWheel.adjust(toPickerWheelValue: dob.year)
                
                doneButton.assertExistenceAndTap()
                // whenITapSaveButton()
            }
        }
        return self
    }
    
    @discardableResult //need TestUser instead String (TestUser)
    func givenISetName(_ user: TestUser) -> Self {
        whenIEditMyProfileScreen{
            nameTextField.assertExistenceAndTap()
            cleanText()
            nameTextField.typeText(user.userName)
        }
        return self
    }
    
    //MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        title.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserDOBAppears(for user: TestUser) -> Self {
        if let dob = user.dob {
            let dobId: String = "Date of Birth: \(dob.month) \(dob.day), \(dob.year)"
            let dobLabel:  XCUIElement = app.staticTexts[dobId]
            dobLabel.assertExistence()
        }
        return self
    }
    
    @discardableResult
    func thenEmailMatch(email: String = "test@test.com") -> Self {
        emailField.firstMatch.assertExistence()
        return self
    }
    
    @discardableResult
    func thenErrorMassageAppears()  -> Self {
        errorMassage.assertExistence()
        return self
        
        // MARK: When
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
        func whenTapProfileBackButton() -> Self {
            profileBackButton.assertExistenceAndTap()
            return self
        }
        
        @discardableResult
        func whenITapClearAllButton() -> Self {
            clearAllButton.assertExistenceAndTap()
            return self
        }
        //closer:
        private func whenIEditMyProfileScreen(action:() -> Void) {
            whenITapEditButton()
            action()
            whenITapSaveButton()
        }
        
        @discardableResult
        func whenNavigateToPlaceholderEmail() -> Self {
            app.textFields["Enter your email"].assertExistenceAndTap()
            return self
        }
        
        // MARK: Helpers
        @discardableResult
        func cleanText()-> Self  {
            // If there's existing text, delete it
            if let currentValue = nameTextField.value as? String {
                let deleteString = String(
                    repeating: XCUIKeyboardKey.delete.rawValue,
                    count: currentValue.count
                )
                nameTextField.typeText(deleteString)
            }
            return self
        }
        
        @discardableResult
        func givenEmail(_ email: String) -> Self {
            placeholderEmail.assertExistenceAndTap()
            if let currentValue = placeholderEmail.value as? String {
                let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: currentValue.count)
                placeholderEmail.typeText(deleteString)
            }
            placeholderEmail.typeText(email)
            return self
        }
    }
    
}
