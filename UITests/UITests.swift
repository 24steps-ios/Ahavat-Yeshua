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

        navigationTabBar.whenINavigateToBibleStudyTab()
        bibleStudyScreen.thenIAssertScreen()

        navigationTabBar.whenINavigateToFeedTab()
        feedScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToExploreTab()
        exploreScreen.thenIAssertScreen()

        navigationTabBar.whenINavigateToHomeTab()
        homeScreen.thenIAssertScreen()
    }
    
    // Give
    // When
    // Then
    // https://github.com/24steps-ios/TestDrivenSwift/blob/main/README.md#following-given-when-then
    
    // Test Logic
    //                                              pre-action   action    assertion
    // Before When need to do Then and also After ( given  Then  When      Then     )
    
    // MARK: HOME WORK!
    
    // Before
    // assert(element, errorMessage) | XCTAssertTrue(app.tabBars.buttons.count == 4)

    // After
    // give, when, then contains element.assert()
    
    func testNavigationBar() {
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigateToBibleStudyTab()
            .thenBibleStudyTabSelected()
            .thenAllTabsAppear()

            .whenINavigateToFeedTab()
            .thenFeedTabAppears()
            .thenAllTabsAppear()
        
            .whenINavigateToExploreTab()
            .thenExploreTabAppears()
            .thenAllTabsAppear()
        
            .whenINavigateToHomeTab()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
    }
        
    func testHomeScreenNavigation() {
        // WHEN I navigate to Bible Reading
        // app.staticTexts["Bible Reading"].assertExistenceAndTap()
         homeScreen.whenINavigateToBibleReadingScreen()
        // THEN Bible Reading screen appears
        //        app.buttons["Show Verse"].assertExistence()
         bibleReadingScreen.thenScreenAppears()

        // WHEN I tap back button
        //        app.buttons["Back"].assertExistenceAndTap()
         bibleReadingScreen.whenITapBackButton()
        // THEN home screen appears
        // app.staticTexts["Bible Reading"].assertExistence()
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


