//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/6/26.
//
import XCTest

class ProfileUITests: UITests {
    
    func testProfileScreenNavigation() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile
            .thenScreenAppears()
            .whenITapBackProfileButton()
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .church)
        myChurch
            .thenScreenAppears()
            .whenITapBackProfileButton()
        profileScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.homeScreen)
    }
    
    func testUserNameInput() {
        let userName: String = "Boby"
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .givenISetName(userName)
            .whenITapBackProfileButton()
        // profileScreen
        //     .thenUserNameMatch(userName)
        //     .whenITapBackButton()
       //   homeScreen
       //      .thenUserNameMatch(userName)
        
    }
    
    func testDefaultUserName() { // tap Clear all button
        
    }
    
}


