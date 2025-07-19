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
        //  .thenScreenAppears()
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
    
    func testDefaultUserName(){ //TO DO:HOMEWORK- tap on Clear All)
        let userName = "Jonny B Good"
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personalButton)
        myProfile
            .givenISetName(userName)
            .clearAllButton.assertExistenceAndTap()
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenDefaultUserNameAppears()
            .whenITapBackButton()
        homeScreen.thenBannerTextFriendAppears()
        
    }
}
    //TO DO:HOMEWORK
   // create manual TCs for email field:

//positiveTC: test@gmail.com
//negativeTC: empty field + enter
// white space field
// white space between letters in front,back , in domain(3)
//missing @, .,(2)
//special characters #, $,% in front,back , in domain(3)
//numbers in front,back , in domain (3)
// upper cases only,in front,back, in domain (4)
// Camel  type cases in front,back, in domain (3)
// max 256 characters in email field

// total 22 tests

    
    
    



