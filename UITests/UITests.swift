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
        navigationTabBar.thenHomeTabAppears()
        navigationTabBar.thenHomeTabSelected()
        navigationTabBar.thenAllTabsAppear()

        navigationTabBar.whenINavigateToBibleStudyTab()
        navigationTabBar.thenBibleStudyTabSelected()
        navigationTabBar.thenAllTabsAppear()
        // TODO: HOME WORK CONTINUATION
        navigationTabBar.whenINavigateToFeedTab()
        navigationTabBar.feedTab.assertSelected()
        navigationTabBar.allTabs.assertEqual(4)
        
        navigationTabBar.whenINavigateToExploreTab()
        navigationTabBar.exploreTab.assertExistence()
        navigationTabBar.allTabs.assertEqual(4)
        
        navigationTabBar.whenINavigateToHomeTab()
        navigationTabBar.homeTab.assertSelected()
        navigationTabBar.allTabs.assertEqual(4)
    }
    
    // NO PAGE OBJECT
    func testHomeScreenNavigation() {
        // when I navigate to Bible Reading
        // then Bible Reading screen appears
        // when I tap back button
        // then home screen appear
        
        // Same for Profile, Donation, LiveStream, Multi-selection, Holy Places Map
    }
}


