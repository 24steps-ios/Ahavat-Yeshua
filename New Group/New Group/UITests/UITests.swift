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
   // func testNavigationTabBar() {
   //     XCTAssertEqual(app.tabBars.buttons.count, 4)
   //     XCTAssertTrue(homeTab.isSelected)
        
   //     bibleStudyTab.tap()
   //     XCTAssertEqual(app.tabBars.buttons.count, 4)
   //     XCTAssertTrue(bibleStudyTab.isSelected)
   //
     //   feedTab.tap()
    //    XCTAssertEqual(app.tabBars.buttons.count, 4)
    //    XCTAssertTrue(feedTab.isSelected)
        
    //    exploreTab.tap()
    //    XCTAssertEqual(app.tabBars.buttons.count, 4)
     //   XCTAssertTrue(exploreTab.isSelected)
        
      //  homeTab.tap()
     //   XCTAssertEqual(app.tabBars.buttons.count, 4)
     //   XCTAssertTrue(homeTab.isSelected)
   // }
}



