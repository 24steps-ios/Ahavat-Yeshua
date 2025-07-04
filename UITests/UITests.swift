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
    lazy var donationScreen: DonationScreen = .init(app: app)
    lazy var liveStreamScreen: LiveStreamScreen = .init(app: app)
    lazy var multi_selectionScreen: Multi_selectionScreen = .init(app: app)
    lazy var holyPlacesMapScreen: HolyPlacesMapScreen  = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
    
    //MARK: HomeScreenNavigation
    
    
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
    
    
    //  changing method: clean architecture approach
    func testNavigationBar() {
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
        
            .whenINavigate(to: .bibleStudyTab)
            .thenBibleStudyTabAppears()
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
    
    
    func testHomeScreenNavigation() { //couldn't mute part of code
        // WHEN I navigate to Bible Reading:
        //app.staticTexts["Bible Reading"].assertExistenceAndTap()
        homeScreen.whenINavigateBibleReadingScreen()
        
        // THEN Bible Reading screen appears:
        // app.buttons["Show Verse"].assertExistence()
        bibleReadingScreen.thenScreenAppears()
        
        
        // WHEN I tap back button:
        //app.buttons["Back"].assertExistenceAndTap()
        bibleReadingScreen.whenITapBackButton()
        
        
        // THEN home screen appears:
        // app.staticTexts["Bible Reading"].assertExistence()
        homeScreen.thenIAssertBibleReadingGroupAppears()
        
        
        
        // WHEN I navigate to Profile:
        
        // app.staticTexts["Profile"].assertExistenceAndTap()
        homeScreen.whenINavigateProfileScreen()
        // THEN Profile screen appears
        //app.navigationBars["Profile"].assertExistence()
        profileScreen.thenScreenAppears()
        // WHEN I tap back button
        // app.buttons["Back"].assertExistenceAndTap()
        profileScreen.whenITapBackButton()
        
        // THEN home screen appears
        // app.staticTexts["Profile"].assertExistence()
        homeScreen.thenIAssertProfileGroupAppears()
        
        
        // WHEN I navigate to Donation:
        //app.staticTexts["Donation"].assertExistenceAndTap()
        homeScreen.whenINavigateDonationScreen()
        // THEN Donation screen appears
        donationScreen.thenScreenAppears()
        //let totalAmountPredicate:NSPredicate = .init(format: "label CONTAINS 'Total Amount'") //predicate
        // app.staticTexts.matching(totalAmountPredicate).firstMatch.assertExistence()        //predicate
        // WHEN I tap back button
        donationScreen.whenITapBackButton()
        //app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        // app.staticTexts["Donation"].assertExistence()
        homeScreen.thenIAssertDonationGroupAppears()
        
        
        // WHEN I navigate to Live Stream
        //app.staticTexts["Live Stream"].assertExistenceAndTap()
        homeScreen.whenINavigateLiveStreamScreen()
        // THEN Live Stream screen appears
        //app.staticTexts["Live Stream"].assertExistence(timeout: 10) //??????  nothing appears
        liveStreamScreen.thenLiveStreamScreenAppears()
        // WHEN I tap back button
        liveStreamScreen.whenITapBackButton()
        //app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        //app.staticTexts["Live Stream"].assertExistence()
        homeScreen.thenIAssertLiveStreamGroupAppears()
        
        
        // WHEN I navigate to Multi-selection:
        homeScreen.whenINavigateMulti_selectionScreen()
        //app.staticTexts["Multi-selection"].assertExistenceAndTap()
        homeScreen.whenINavigateMulti_selectionScreen()
        // THEN Multi-selection screen appears
        multi_selectionScreen.thenMulti_selectionScreenAppears()
        //app.staticTexts["Select Activities"].assertExistence()
        
        // WHEN I tap back button
        multi_selectionScreen.whenITapBackButton()
        //app.staticTexts["Se
        //app.buttons["Back"].assertExistenceAndTap()
        
        // THEN home screen appears:
        // app.staticTexts["Multi-selection"].assertExistence()
        homeScreen.thenIAssertMulti_selectionGroupAppears()
        
        
        
        
        // WHEN I navigate to Holy Places Map:
        //  app.staticTexts["Holy Places Map"].assertExistenceAndTap()
        homeScreen.whenINavigateHolyPlacesMapScreenAppears()
        
        // THEN Holy Places Map screen appears
        // app.buttons["plus.circle.fill"].assertExistence()
        holyPlacesMapScreen.thenScreenAppears()
        
        // WHEN I tap back button:
        //app.buttons["Back"].assertExistenceAndTap()
        holyPlacesMapScreen.whenITapBackButton()
        
        // THEN home screen appears
        //app.staticTexts["Holy Places Map"].assertExistence()
        homeScreen.thenIAssertHolyPlacesMapGroupAppears()
    }
}




