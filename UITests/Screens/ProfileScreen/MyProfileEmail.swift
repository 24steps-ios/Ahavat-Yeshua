//
//  MyProfile.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 8/4/25.
//
import XCTest

// Base fore Smock Test
class EmailInputView: UITests {

    func emailInputPositive() {
     
        homeScreen
            .thenScreenAppears()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile.thenScreenAppears()
            .whenITapEditButton()
        myProfile.thenNavigateTolPlaceholderEmail()
        myProfile.setEmail("test@test.com")
        myProfile.whenITapSaveButton()
        myProfile.whenTapProfileBackButton()
        profileScreen.thenScreenAppears()
        profileScreen.thenEmailMatch("test@test.com")
        profileScreen.whenITapBackButton() //not sore
        homeScreen.thenScreenAppears()  

        
    }
}
