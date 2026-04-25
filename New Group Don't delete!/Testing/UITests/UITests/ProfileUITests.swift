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
     //   let userEva: TestUser = .userEva   // escape mistake (optional)
        let users: [TestUser] = [.userEva, .userJonny, .userAnonymous]   // Array(List)
        
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        users.forEach {                   //closure
            myProfile
                .givenISetDOB(for: $0)
                .thenUserDOBAppears(for: $0)
        }
    }
   // B4
//    users.forEach { testUser in        // closure
//        myProfile                //$0
//            .givenISetDOB(for: testUser) //$0
//            .thenUserDOBAppears(for: testUser)
//    }
    
    func testUserNameInput() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
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
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .givenISetEmail(for: .userEva)
            .thenUserEmailAppears()
            .thenValidateErrorMessage()
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile
            .thenUserEmailAppears()
    }
    
    func testUpdateEmailWithInvalidEmail() {
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .whenINavigate(to: .personal)
        myProfile
            .givenISetEmail(for: .userAnonymous)
    }
}

