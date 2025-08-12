//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 8/4/25.
//
import XCTest

class MyProfileUITests: UITests {
    // MARK: Test Data
    let invalidEmail: String = "null"
    
    // MARK: Tests
    func testEmailInputPositive() {
        homeScreen
            .thenScreenAppears()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfileScreen
            .thenScreenAppears()
            .givenIInputEmail(.userJonny)
            .thenEmailMatch(.userJonny)
    }
    
    
//    func testEmailInputErrorMessage() {
//      // assert appears of static text "Please enter valid email address"
//        homeScreen
//            .thenScreenAppears()
//            .whenINavigate(to: .profileScreen)
//        profileScreen
//            .thenScreenAppears()
//            .whenINavigate(to: .personal)
//        myProfileScreen
//            .thenScreenAppears()
//            .whenITapEditButton()
////           .whenNavigateToPlaceholderEmail()
//            .givenEmail(invalidEmail)
//            .thenErrorMassageAppears()
//            .whenITapSaveButton() X
//            .thenErrorMassageAppears() X
//    }
    
    // func testIncorectEmailNotSave() {}
 }

//    TO DO:HOMEWORK
//     create manual TCs for email field:
//
//    positiveTC: test@gmail.com
//    negativeTC: empty field + enter
//     white space field
//     white space between letters in front,back , in domain(3)
//    missing @, .,(2)
//    special characters #, $,% in front,back , in domain(3)
//    numbers in front,back , in domain (3)
//     upper cases only,in front,back, in domain (4)
//     Camel  type cases in front,back, in domain (3)
//     max 256 characters in email field
    
    // total 22 tests
