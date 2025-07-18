//
//  CoreUITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/16/25.
//
import XCTest

// Base fore Smock Test
class CoreUITests: UITests {
    
    func testMainTabs() {
        homeScreen.thenScreenAppears()
        
        navigationTabBar.whenINavigate(to: .bibleStudyTab)
        bibleStudyScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .feedTab)
        feedScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .exploreTab)
        exploreScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigate(to: .homeTab)
        homeScreen.thenScreenAppears()
        
        
        navigationTabBar.whenINavigate(to: .homeTab)
        homeScreen.thenScreenAppears()
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
            .thenMultiSelectionScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.multiSelectionScreen)
            .whenINavigate(to: .holyPlacesMapScreen)
        holyPlacesMapScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.holyPlacesMapScreen)
    }
    
}

