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
        let users: [TestUser] = [.userEva, .userJonny, .userAnonymous]
        
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
            .thenUserEmailAppears(for: .userEva)
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
    
    func testUserPhoneInput() {
        whenINavigateToMyProfile()
        myProfile
            .givenISetPhone(for: .userJonny)
            .thenUserPhoneAppears(for: .userJonny)
            .whenITapBackProfileButton()
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .thenUserPhoneMatch(for: .userJonny)
    }
    
    func testMultipleUsersPhonesInput() {
        let users: [TestUser] = [.userJonny, .userEva, .userBoby, .userAnonymous]
        whenINavigateToMyProfile()
        users.forEach {
            myProfile
                .givenISetPhone(for: $0)
                .thenUserPhoneAppears(for: $0)
        }
    }
    
    func testUserFullDataInput() {
        whenINavigateToMyProfile()
        myProfile
            .givenISetName( .userEva)
            .thenUserNamesAppears(for: .userEva)
        
            .givenISetEmail(for: .userEva)
            .thenUserEmailAppears(for: .userEva)
        
            .givenISetAddress(for: .userEva)
            .thenUserAddressAppears(for: .userEva)
        
            .givenISetPhone(for: .userEva)
            .thenUserPhoneAppears(for: .userEva)
        
            .givenISetDOB(for: .userEva)
            .thenUserDOBAppears(for: .userEva)
    }
    
    func testMultipleUsersFullDataInput() {
        let users: [TestUser] = [.userEva, .userJonny, .userAnonymous]
        whenINavigateToMyProfile()
        users.forEach {
            myProfile
                .givenISetName( $0)
                .thenUserNamesAppears(for: $0)
            
                .givenISetEmail(for: $0)
                .thenUserEmailAppears(for: $0)
            
                .givenISetAddress(for: $0)
                .thenUserAddressAppears(for: $0)
            
                .givenISetPhone(for: $0)
                .thenUserPhoneAppears(for: $0)
            
                .givenISetDOB(for: $0)
                .thenUserDOBAppears(for: $0)
        }
    }
}
