//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/14/25.
//

import XCTest

class ProfileUITests: UITests {
    func testMyProfileScreenNavigation() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigateToMyProfile() // TODO: HOMEWORK - add enum for Personal and Church
        myProfile
            .thenScreenAppears()
            .whenTapProfileBackButton()
        profileScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenScreenAppears()
    }
    
    func testUserNameInput() {
        let userName = "Jonny B Good"
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigateToMyProfile()
        myProfile
            .givenISetName(userName)
            .whenTapProfileBackButton()
        profileScreen
            .thenUserNameMatch(userName)
            .whenITapBackButton()
        homeScreen
            .thenUserNameMatch(userName)
    }
    
    func testDefaultUserName() { // TODO: HOMEWORK - tap on Clear All
    }
    
    // TODO: HOMEWORK
    // Create manual TCs for email field 
}
