//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 8/4/25.
//
import XCTest

// MARK: Test Data
//let invalidEmail: String = "null"

// MARK: Tests
class MyProfileUITests: UITests {
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
    
    func testEmailInputNegative() {
        homeScreen
            .thenScreenAppears()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfileScreen
            .thenScreenAppears()
            .givenIInputInvalidEmail(.userJonny)
    }
}
