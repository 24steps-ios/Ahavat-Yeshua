//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 8/4/25.
//
import XCTest

class MyProfileUITests: UITests {
    
    let email: String = "test@test.com"
    
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
            .thenEmailMatch(String: email)   ////if email  field: app.staticTexts["Email:\(email)"]
            
    }
}
