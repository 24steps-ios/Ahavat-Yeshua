//
//  UITests.swift
//  UITests
//
//  Created by Ilya Sheynblat on 2/19/26.
//NavigationTabBar Testing!:
// Test
import XCTest

class UITests: Runner {
    
    // MARK: Screens // CUSTOM
    lazy var homeScreen: HomeScreen = .init(app: app)
    lazy var bibleStudyScreen: BibleStudyScreen = .init(app: app)
    lazy var feedScreen: FeedScreen = .init(app: app)
    lazy var exploreScreen: ExploreScreen = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
    
    //    //MARK: TabBar elements
    //    let tabBar = app.tabBars.firstMatch
    //       let bibleStudyTab = app.tabBars.buttons["BibleStudy"]
    
    // MARK: Tests
    func testMainScreens() {
        homeScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToBibleStudyTab()
        bibleStudyScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToFeedTab()
        feedScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateExploreTab()
        exploreScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToHomeTab()
        homeScreen.thenIAssertScreen()
    }
    
    func testNavigationTabBar() {
        navigationTabBar.thenHomeTabAppears()
        navigationTabBar.thenHomeTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateToBibleStudyTab()
        navigationTabBar.thenBibleStudyTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateToFeedTab()
        navigationTabBar.thenFeedTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateExploreTab()
        navigationTabBar.thenExploreTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateToHomeTab()
       // XCTAssertTrue(navigationTabBar.homeTab.isSelected)
        navigationTabBar.thenHomeTabSelected()
       // XCTAssertTrue(app.tabBars.buttons.count == 4)
       // app.tabBars.buttons.assertEqual(4)
        navigationTabBar.thenAllTabsAppears()
    }
}
// b4
// assert(element, error massage)
//  XCTAssertEqual(app.tabBars.buttons.count, 4)

// After
// given, then,when contains -> element.assert()
