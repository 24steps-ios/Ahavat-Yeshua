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
    func testNavigationBar() {
        // home tab `isSelected`
        
        // bible study tab - tap
        // app.tabBars.count == 4
        // bible study tab `isSelected`
        
        // feed tab - tap
        // app.tabBars.count == 4
        // feed tab `isSelected`
        
        // explore tab - tap
        // app.tabBars.count == 4
        // explore tab `isSelected`
        
        // home tab - tap
        // home tab `isSelected`
    }
}
