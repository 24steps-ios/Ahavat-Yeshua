//
//  NavigationTabBar.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class NavigationTabBar: BaseScreen {
    // MARK: TabBar Single Elements
    lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
    // MARK:   TabBar All Elements
    lazy var allTabs: XCUIElementQuery = app.tabBars.buttons //RETURN ALL BUTTONS from tabBar

   // MARK: THEN
    func thenHomeTabAppears() {
        homeTab.assertExistence()
    }
    func thenHomeTabSelected() {
        homeTab.assertSelected()
    }
    func thenAllTabsAppear() {
        allTabs.assertEqual(expectation: 4)
    }
    func thenBibleStudyTabAppears() {
        bibleStudyTab.assertExistence()
    }
    func thenFeedTabAppears() {
        feedTab.assertExistence()
    }
    func thenExploreTabAppears() {
        exploreTab.assertExistence()
    }
    
    
  // MARK: WHEN
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
