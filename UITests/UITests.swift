//
//  UITests.swift
//  UITests
//
//  Created by Ilia Pavlov on 2/22/24.
//

import XCTest

class UITests: Runner {
    // MARK: Screens
    lazy var homeScreen: HomeScreen = .init(app: app)
    lazy var bibleStudyScreen: BibleStudyScreen = .init(app: app)
    lazy var feedScreen: FeedScreen = .init(app: app)
    lazy var exploreScreen: ExploreScreen = .init(app: app)
    
    lazy var bibleReadingScreen: BibleReadingScreen = .init(app: app)
    lazy var profileScreen: ProfileScreen = .init(app: app)
    lazy var myProfile: MyProfile = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
        
    // MARK: Tests
    func testMainScreens() {
        homeScreen.thenIAssertScreen()

        navigationTabBar.whenINavigate(to: .bibleStudyTab)
        bibleStudyScreen.thenIAssertScreen()

        navigationTabBar.whenINavigate(to: .feedTab)
        feedScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .exploreTab)
        exploreScreen.thenIAssertScreen()

        navigationTabBar.whenINavigate(to: .homeTab)
        homeScreen.thenIAssertScreen()
    }
    
    func testNavigationBar() {
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .bibleStudyTab)
            .thenBibleStudyTabSelected()
            .thenAllTabsAppear()

            .whenINavigate(to: .feedTab)
            .thenFeedTabAppears()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .exploreTab)
            .thenExploreTabAppears()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .homeTab)
            .thenHomeTabSelected()
            .thenAllTabsAppear()
    }
    
    // TODO: Home Work
    func testMyProfileScreenNavigation() {
        let app = XCUIApplication()
        app.activate()
        let userName: String = "Boby"
        
        //app.staticTexts["Profile"].whenINavigateToProfileScreen()
        homeScreen.whenINavigateToProfileScreen()
        // app.buttons["Personal"].assertExistence()
        profileScreen.thenIAssertScreen()
        //app.buttons["Personal"].tap()
        profileScreen.whenINavigateToMyProfile()
        
        myProfile.givenISetName(userName)
        myProfile.whenTapBackButton()
        profileScreen.thenUserNameMatch(userName)
        // TODO: Home Work : DONE!
        //one step back:
        profileScreen.whenITapBackButton()
        // assert banner has same userName:
        homeScreen.thenUserNameMatch(userName)
    }
}
