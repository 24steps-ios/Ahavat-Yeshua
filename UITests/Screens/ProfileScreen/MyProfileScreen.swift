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
    
    // MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    lazy var emailField: XCUIElement = app.textFields["Enter your email"]
    
    // MARK: Piker Wheels
    lazy var monthPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 0)
    lazy var dayPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 1)
    lazy var yearPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 2)
    
    // MARK: Static Texts
    lazy var errorMassage: XCUIElement = app.staticTexts["please_enter_a_valid_email_address"]
    
    // MARK: Given
    @discardableResult
    func givenISetDOB(for user: TestUser) -> Self {
        if let dob = user.dob {
            whenIEditMyProfileScreen {
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
        whenIEditMyProfileScreen {
            nameTextField.assertExistenceAndTap()
            nameTextField.cleanText()
            nameTextField.typeText(user.userName)
        }
        return self
    }
    
    @discardableResult
    func givenIInputEmail(
        _ user: TestUser,
        isErrorMessageAppears: Bool = false
    ) -> Self {
        whenIEditMyProfileScreen {
            emailField.assertExistenceAndTap()
            emailField.cleanText()
            emailField.typeText(user.email ?? "N/A")
            if isErrorMessageAppears {
                thenEmailFieldErrorMessageAppears()
            }
        }
        return self
    }
    
    //MARK: Then
    @discardableResult
    func thenEmailFieldErrorMessageAppears() -> Self {
        errorMassage.assertExistence()
        return self
    }
    
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
    
    @discardableResult
    func thenEmailMatch(_ user: TestUser) -> Self {
        let emailField: XCUIElement = app.staticTexts["Email: \(user.email ?? "N/A")"].firstMatch
        emailField.assertExistence()
        return self
    }
    
    @discardableResult
    func thenErrorMassageAppears()  -> Self {
        errorMassage.assertExistence()
        return self
    }
    
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
    
    func whenIEditMyProfileScreen(action:() -> Void) {
        whenITapEditButton()
        action()
        whenITapSaveButton()
    }
}
