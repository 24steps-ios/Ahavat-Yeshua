//
//  CoreUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/6/26.
//
import XCTest

// Base for smoke tests
class CoreUITests: UITests {
    func testMainTabs() {
        homeScreen
            .thenIAssert(.homeScreen)
        
        navigationTabBar
            .whenINavigate(to: .bibleStudyTab)
        bibleStudyScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .feedTab)
        feedScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .exploreTab)
        exploreScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .homeTab)
        homeScreen
            .thenIAssert(.homeScreen)
    }
    
    func testNavigationTabBar() { //chaining
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .bibleStudyTab)
            .thenBibleStudyTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .feedTab)
            .thenFeedTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .exploreTab)
            .thenExploreTabSelected()
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
            .thenDonationScreenAppears()
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
            .thenMultiSelectionScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.multiSelectionScreen)
            .whenINavigate(to: .holyPlacesMapScreen)
        holyPlacesMapScreen
            .thenHolyPlacesMapScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.holyPlacesMapScreen)
    }
}
