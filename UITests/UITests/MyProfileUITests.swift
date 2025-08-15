//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 8/4/25.
//
import XCTest

class MyProfileUITests: UITests {
    // MARK: Tests
    func testEmailInput() {
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
    
    func testEmailInputErrorMessage() {
        homeScreen
            .thenScreenAppears()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfileScreen
            .thenScreenAppears()
            .givenIInputEmail(.userAnonymous, isErrorMessageAppears: true)
    }
 }
