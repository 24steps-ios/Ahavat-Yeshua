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
    
    func testDefaultUserName() { // tap Clear all. button Create manual TC's for email
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile
            .thenScreenAppears()
            .givenISetEmail(.userJonny)
            .whenITapBackProfileButton()
        profileScreen
            .whenINavigate(to: .personal)
        //   myProfile
        //          .thenUserEmailMatch(.userJonny)
        //  .whenITapClearAllButton()
    }
    
    func testUserDOB() { // TO DO: TAP ON Clear All
        homeScreen
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenINavigate(to: .personal)
        myProfile
            .whenITapEditButton()
            .whenITapDateOfBirthButton()
            .givenISetDOB(for: .userJonny)
            .whenITapDoneButton()
            .thenDOBAppears()
            .whenITapSaveButton()
            .thenFieldContainsDOB()
    }
    
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
    }

