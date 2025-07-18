//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/14/25.
//

import XCTest

class ProfileUITests: UITests {    
    // MARK: Tests
    
    func testMyProfileScreenNavigation() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile
            .thenScreenAppears()
            .whenTapProfileBackButton()
        profileScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenScreenAppears()
    }
        
    func testDefaultUserName() {} // TODO: HOMEWORK - tap on Clear All
    
    // TODO: HOMEWORK
    // Create manual TCs for email field
    
    func testUserDOB() {}
    
    func testUserNameInput() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        userNameMatchMultipleScreens(.userJonny)
    }
}

extension ProfileUITests {
    func userNameMatchMultipleScreens(_ username: TestUser) {
        myProfile
            .givenISetName(username)
            .whenTapProfileBackButton()
        profileScreen
            .thenUserNameMatch(username)
            .whenITapBackButton()
        homeScreen
            .thenUserNameMatch(username)
    }
}
