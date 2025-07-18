//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/16/25.
//
import XCTest

class ProfileUITests: UITests {
    func testMyProfileScreenNavigation() {
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personalButton)// TO DO:HOMEWORK - add enum MyChurch AND MyPersonal
        myProfile
           .thenScreenAppears()
            .whenTapProfileBackButton()
        profileScreen
            .thenScreenAppears()
            . whenITapBackButton()
        homeScreen
            .thenScreenAppears()
   
    }
    
    func testUserNameInput(){
        let userName = "Jonny B Good"
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personalButton)
        myProfile
            .givenISetName(userName)
            .whenTapProfileBackButton()
        profileScreen
            .thenUserNameMatch(userName)
            . whenITapBackButton()
        homeScreen
            .thenUserNameMatch(userName)
    }
    func testDefaultUserName(){  // TO DO:HOMEWORK- tap on Clear All)
        
    }
    //TO DO:HOMEWORK
   // create manual TCs for email field
}

