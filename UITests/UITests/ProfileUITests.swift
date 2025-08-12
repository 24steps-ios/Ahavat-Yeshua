//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/16/25.
//
import XCTest

class ProfileUITests: UITests {
    
    // MARK: Tests
    func testMyProfileScreenNavigation() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)// TO DO:HOMEWORK - add enum MyChurch AND MyPersonal
        myProfileScreen
            .thenScreenAppears()
            .whenTapProfileBackButton()
        profileScreen
            .thenScreenAppears()
            . whenITapBackButton()
        homeScreen
            .thenScreenAppears()
    }
    
    // TODO: HOMEWORK
    func testUserDOB() {              //Array:
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
//        myProfile
//            .givenISetDOB(for: .userJonny)
//            .thenUserDOBAppears(for: .userJonny)
//        myProfile
//            .givenISetDOB(for: .userAnonymous)
//            .thenUserDOBAppears(for: .userAnonymous)
//    }
    
    func testUserNameInput() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        userNameMatchMultipleScreens(.userJonny)
    }
}
extension ProfileUITests {
    func userNameMatchMultipleScreens(_ username: TestUser){
        myProfileScreen
        .givenISetName(username)
        .whenTapProfileBackButton()
        profileScreen
            .thenUserNameMatch(username)
            . whenITapBackButton()
        homeScreen
            .thenUserNameMatch(username)
    }
    
    func testDefaultUserName() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        myProfileScreen
            .whenITapClearAllButton()
            .whenTapProfileBackButton()
        profileScreen
            .thenDefaultUserNameAppears()
            .whenITapBackButton()
        homeScreen
            .thenBannerTextShowDefault()
    }
}
