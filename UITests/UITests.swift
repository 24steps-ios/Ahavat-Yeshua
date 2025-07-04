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
    
    
    func testHomeScreenNavigation() {
        homeScreen.whenINavigateToBibleReadingScreen()
        bibleReadingScreen.thenScreenAppears()
        bibleReadingScreen.whenITapBackButton()
        homeScreen.thenIAssertBibleReadingGroupAppears()
        
        homeScreen.whenINavigateProfileScreen()
        profileScreen.thenScreenAppears()
        profileScreen.whenITapBackButton()
        homeScreen.thenIAssertProfileGroupAppears()
        
        homeScreen.whenINavigateDonationScreen()
        donationScreen.thenScreenAppears()
        donationScreen.whenITapBackButton()
        homeScreen.thenIAssertDonationGroupAppears()
        
        homeScreen.whenINavigateLiveStreamScreen()
        liveStreamScreen.thenLiveStreamScreenAppears()
        liveStreamScreen.whenITapBackButton()
        homeScreen.thenIAssertLiveStreamGroupAppears()
        
        homeScreen.whenINavigateMulti_selectionScreen()
        multi_selectionScreen.thenMulti_selectionScreenAppears()
        multi_selectionScreen.whenITapBackButton()
        homeScreen.thenIAssertMulti_selectionGroupAppears()
        
        homeScreen.whenINavigateHolyPlacesMapScreen()
        holyPlacesMapScreen.thenScreenAppears()
        holyPlacesMapScreen.whenITapBackButton()
        homeScreen.thenIAssertHolyPlacesMapGroupAppears()
    }
}




