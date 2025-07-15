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
    lazy var feedScreen: FeedScreen = .init(app: app)
    lazy var exploreScreen: ExploreScreen = .init(app: app)
    lazy var bibleReadingScreen: BibleReadingScreen = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
    
    //MARK: HomeScreenNavigation
    lazy var bibleStudyScreen: BibleStudyScreen = .init(app: app)
    lazy var profileScreen: ProfileScreen = .init(app: app)
    lazy var donationScreen: DonationScreen = .init(app: app)
    lazy var liveStreamScreen: LiveStreamScreen = .init(app: app)
    lazy var multiSelectionScreen: MultiSelectionScreen = .init(app: app)
    lazy var holyPlaceMapScreen: HolyPlaceMapScreen = .init(app: app)
    
    
    func testMainScreens() {
        homeScreen
            .thenIAssert( .bibleReadingScreen)
        // navigationTabBar.whenINavigateToBibleReadingScreen()   //instead!
        navigationTabBar.whenINavigate(to: .bibleStudyTab)
        bibleStudyScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .feedTab)
        feedScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .exploreTab)
        exploreScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .homeTab)
        homeScreen
            .thenIAssert(.bibleReadingScreen)
    }
    
    
    func testNavigationBar() {
        
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
        // navigationTabBar.whenINavigateToBibleReadingScreen() //instead!
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
    
    
    func testHomeScreenNavigation() {
        homeScreen
            .whenINavigate(to: .bibleReadingScreen)
        bibleReadingScreen
            .thenScreenAppears()
           // .whenITapBackButton(.bibleReadingScreen) //instead this:
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.bibleReadingScreen)
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.profileScreen)
            .whenINavigate(to: .donationScreen)
        donationScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.donationScreen)
            .whenINavigate(to: .liveStreamScreen)
        liveStreamScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.liveStreamScreen)
            .whenINavigate(to: .multiSelectionScreen)
        multiSelectionScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.multiSelectionScreen)
            .whenINavigate(to: .holyPlaceMapScreen)
        holyPlaceMapScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.holyPlaceMapScreen)
    }
}
