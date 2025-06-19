//
//  NavigationTabBar.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class NavigationTabBar: BaseScreen {
    // MARK: TabBar
    lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
    // MARK: All Elements
    lazy var allTabs: XCUIElementQuery = app.tabBars.buttons
    
    // MARK: Then
    func thenHomeTabAppears() {
        homeTab.assertExistence()
    }
    
    func thenHomeTabSelected() {
        homeTab.assertSelected()
    }
    
    func thenAllTabsAppear() {
        allTabs.assertEqual(4)
    }
    
    func thenBibleStudyTabSelected() {
        bibleStudyTab.assertSelected()
    }
    
    // MARK: When
    func whenINavigateToHomeTab() {
        homeTab.assertExistence(isElementStatic: true)
        homeTab.tap()
    }
    
    func whenINavigateToBibleStudyTab() {
        bibleStudyTab.assertExistence(isElementStatic: true)
        bibleStudyTab.tap()
    }
    
    func whenINavigateToFeedTab() {
        feedTab.assertExistence(isElementStatic: true)
        feedTab.tap()
    }
    
    func whenINavigateToExploreTab() {
        exploreTab.assertExistence(isElementStatic: true)
        exploreTab.tap()
    }
    
}
