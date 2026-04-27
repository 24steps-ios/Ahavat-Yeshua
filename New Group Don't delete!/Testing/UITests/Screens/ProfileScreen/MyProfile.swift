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
    lazy var dobButton: XCUIElement = app.buttons.matching(dobFieldPredicate).firstMatch
    
    
    //MARK: Predicates
    let dobFieldPredicate: NSPredicate = .init(format: "label CONTAINS 'Date of Birth:'")
    let addressFieldPredicate: NSPredicate = .init(format: "label CONTAINS 'Address:'")
    
    // MARK: Navigation Bar Elements
    lazy var title: XCUIElement = app.navigationBars.staticTexts["My Profile"]
    lazy var backProfileButton: XCUIElement = app.navigationBars.buttons["Profile"]
    
    //MARK: Text Fields
    lazy var nameTextField: XCUIElement = app.textFields.element(boundBy: 0)
    lazy var emailTextField: XCUIElement = app.textFields.element(boundBy: 1)
    lazy var addressTextField: XCUIElement = app.textFields["Address"]
    lazy var phoneTextField: XCUIElement = app.textFields["Phone"]
    
    // MARK: Picker Wheels
    lazy var monthPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 0) //.adjust(toPickerWheelValue: "May")
    lazy var dayPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 1)
    lazy var yearPickerWheel: XCUIElement = app.pickerWheels.element(boundBy: 2)
    
    //MARK: Static Texts
    lazy var dobField: XCUIElement = app.staticTexts["Date of Birth: August 7, 1976"]
    lazy var emailField: XCUIElement = app.staticTexts["Email: eva@gmail.com"]
    lazy var errorMassage: XCUIElement = app.staticTexts["Please enter a valid email address."]
    lazy var addressField: XCUIElement = app.staticTexts.matching(addressFieldPredicate).firstMatch
    
    
    // MARK: Given
    /// if user has dob then execute code ,if dob = nil don't do nothing
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
    /// Closure
    private func  whenIEditMyProfile(action: () -> Void) {
        whenITapEditButton()
        action()
        whenITapSaveButton()
    }
    
    @discardableResult
    func givenISetName(_ user: TestUser) -> Self {
        whenIEditMyProfile {
            nameTextField.assertExistenceAndTap()
            cleanNameText()
            nameTextField.typeText(user.userName)
        }
        return self
    }
    
    @discardableResult
    func givenISetEmail(for user: TestUser) -> Self {
        if let email = user.email {   //unwrap
            whenIEditMyProfile {
                emailTextField.assertExistenceAndTap()
                cleanEmailText()
                emailTextField.typeText(email)
            }
        }
        return self
    }
    
    @discardableResult
    func givenISetAddress(for user: TestUser) -> Self {
        if let address = user.address {
            whenIEditMyProfile {
                clearAllButton.assertExistenceAndTap()
                addressTextField.assertExistenceAndTap()
                addressTextField.typeText(address)
            }
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
            let dobLabel: XCUIElement = app.staticTexts[dobId]
            dobLabel.assertExistence()
        }
        return self
    }
    
    @discardableResult
    func thenUserAddressAppears(for user: TestUser) -> Self {
        if let address = user.address {
        let  userAddress: XCUIElement = app.staticTexts["Address: \(address)"]
            userAddress.assertExistence()
        }
        return self
    }
    
    @discardableResult
    func thenUserEmailAppears(for user: TestUser) -> Self {
            let userEmail: XCUIElement = app.staticTexts["Email: eva@gmail.com"]
            userEmail.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserEmailAppears() -> Self {
        emailField.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserAddressAppears() -> Self {
        addressField.assertExistence()
        return self
    }
    
    @discardableResult
    func thenValidateErrorMessage() -> Self {
        if errorMassage.exists {
            errorMassage.assertExistence()
            cleanEmailText()
            emailTextField.typeText(_ : "Wrong email")
        } else {
            backProfileButton.assertExistenceAndTap()
        }
        return self
    }
    
    // MARK: When
    @discardableResult
    func whenITapDateOfBirthButton() -> Self {
        dobButton.assertExistenceAndTap()
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
