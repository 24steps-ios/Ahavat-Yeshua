//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 8/4/25.
//
import XCTest

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
            .whenITapEditButton()
            .whenNavigateToPlaceholderEmail()
            .givenEmail(email)
            .whenITapSaveButton()
            .thenEmailMatch(email: email)  ////if email  field: app.staticTexts["Email:\(email)"]
            
    }
    let email = "null"
    
    func testEmailInputNegative(){
      // assert appears of static text "Please enter valid email address"
        homeScreen
            .thenScreenAppears()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfileScreen
            .thenScreenAppears()
            .whenITapEditButton()
           .whenNavigateToPlaceholderEmail()
            .givenEmail(email)
            .thenErrorMassageAppears()
            .whenITapSaveButton()
            .thenErrorMassageAppears()
    }
 }
