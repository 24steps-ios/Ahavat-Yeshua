//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/16/25.
//
import XCTest

class ProfileUITests: UITests {
    // MARK: Preconditions
    override func setPreconditions() {
        flags = ["-ResetUserName"]
    }
    
    // MARK: Tests
    func testMyProfileScreenNavigation() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfileScreen
            .thenScreenAppears()
            .whenTapProfileBackButton()
        profileScreen
            .thenScreenAppears()
            . whenITapBackButton()
        homeScreen
            .thenScreenAppears()
    }
    
    func testUserDOB() {
        let users: [TestUser] = [.userEve, .userJonny, .userAnonymous]
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        users.forEach {
            myProfileScreen
                .givenISetDOB(for: $0)
                .thenUserDOBAppears(for: $0)
        }
    }
    
    func testUserNameInput() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        userNameMatchMultipleScreens(.userJonny)
    }
        
    func testDefaultUserName() {
        homeScreen
            .thenBannerTextShowDefault()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenDefaultUserNameAppears()
    }
}

extension ProfileUITests {
    func userNameMatchMultipleScreens(_ username: TestUser) {
        myProfileScreen
        .givenISetName(username)
        .whenTapProfileBackButton()
        profileScreen
            .thenUserNameMatch(username)
            . whenITapBackButton()
        homeScreen
            .thenUserNameMatch(username)
    }
}
