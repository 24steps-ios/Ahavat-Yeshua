//
//  ProfileUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/6/26.
//
import XCTest

class ProfileUITests: UITests {
    // MARK: Test data
    //  let  userJonny: TestUser = .userJonny // for escape mistake
    
    // MARK: Tests
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
    
    func testDefaultUserName() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .givenISetName( .userJonny)
            .whenITapClearAllButton()
            .whenITapBackProfileButton()
        profileScreen
            .thenDefaultUserNameAppears()
            .whenITapBackButton()
        homeScreen
            .thenBannerTextShowsDefault()
    }
    
    func testUserDOB() {
        let users: [TestUser] = [.userEva, .userJonny, .userAnonymous]   // Array(List)
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        users.forEach {                   //closure
            myProfile
                .givenISetDOB(for: $0)  //  $0 - every user
                .thenUserDOBAppears(for: $0)
        }
    }
    
    func testUserNameInput() {
        whenINavigateToMyProfile()
        userNameMatchMultipleScreens( .userJonny)
    }
}
extension ProfileUITests {
    func userNameMatchMultipleScreens(_ username: TestUser) {
        myProfile
            .givenISetName(username)
            .whenITapBackProfileButton()
        //      profileScreen
        //          .thenUserNameMatch(username)
        //          .whenITapBackButton()
        //      homeScreen
        //          .thenUserNameMatch(username)
    }
    
    func testUpdateEmailWithValidEmail() {
        whenINavigateToMyProfile()
        myProfile
            .givenISetEmail(for: .userEva)
            .thenUserEmailAppears()
            .thenValidateErrorMessage()
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile
            .thenUserEmailAppears(for: .userEva)
    }
    
    func testUpdateEmailWithInvalidEmail() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .givenISetEmail(for: .userAnonymous)
    }
    
    func testUserAddressInput() {
        whenINavigateToMyProfile()
        myProfile
            .givenISetAddress(for: .userJonny)
            .thenUserAddressAppears(for: .userJonny)
            .whenITapBackProfileButton()
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .thenUserAddressAppears(for: .userJonny)
    }
}

extension ProfileUITests {
    func whenINavigateToMyProfile() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
    }
    
    func testInputMultipleUsersAddresses() {
        let users: [TestUser] = [.userJonny, .userEva, .userBoby, .userAnonymous]
        whenINavigateToMyProfile()
        users.forEach {
            myProfile
                .givenISetAddress(for: $0)
                .thenUserAddressAppears(for: $0)
        }
    }
}


