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
        
    func testHomeScreenNavigation() {
         homeScreen.whenINavigateToBibleReadingScreen()
         bibleReadingScreen.thenScreenAppears()
         bibleReadingScreen.whenITapBackButton()
         homeScreen.thenIAssertBibleReadingGroupAppears()

        // WHEN I navigate to Profile
        app.staticTexts["Profile"].assertExistenceAndTap() // exists?
        // THEN Profile screen appears
        app.buttons["Personal"].assertExistence() // better use Title!
        // WHEN I tap back button
        app.buttons["Back"].assertExistenceAndTap() // exists?
        // THEN home screen appears
        app.staticTexts["Profile"].assertExistence()
        
        // WHEN I navigate to Donation
        app.staticTexts["Donation"].assertExistenceAndTap() // exists?
        // THEN Donation screen appears
        let totalAmountPredicate: NSPredicate = .init(format: "label CONTAINS 'Total Amount:'")
        app.staticTexts.matching(totalAmountPredicate).firstMatch.assertExistence() // use `Total Amount`
        // WHEN I tap back button
        app.buttons["Back"].assertExistenceAndTap() // exists?
        // THEN home screen appears
        app.staticTexts["Donation"].assertExistence()
        
        // WHEN I navigate to Live Stream
        app.staticTexts["Live Stream"].assertExistenceAndTap() // exists?
        // THEN Live Stream screen appears
        // app.staticTexts["Live Stream"].assertExistence(timeout: 10) //?????? nothing appears
        // WHEN I tap back button
        app.buttons["Back"].assertExistenceAndTap() // exists?
        // THEN home screen appears
        app.staticTexts["Live Stream"].assertExistence()
        
        // WHEN I navigate to Multi-selection
        app.staticTexts["Multi-selection"].assertExistenceAndTap() // exists?
        // THEN Multi-selection screen appears
        app.staticTexts["Select Activities"].assertExistence()
        // WHEN I tap back button
        app.buttons["Back"].assertExistenceAndTap() // exists?
        // THEN home screen appears
        app.staticTexts["Multi-selection"].assertExistence()
        
        // WHEN I navigate to Holy Places Map
        app.staticTexts["Holy Places Map"].assertExistenceAndTap() // exists?
        // THEN Holy Places Map screen appears
        app.buttons["plus.circle.fill"].assertExistence()
        // WHEN I tap back button
        app.buttons["Back"].assertExistenceAndTap() // exists?
        // THEN home screen appears
        app.staticTexts["Holy Places Map"].assertExistence()
    }
}


