//
//  NavigationTabBar.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/13/26.
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
    
    func thenAllTabsAppears() {
        allTabs.assertEqual(4)
    }
    
    func thenBibleStudyTabSelected() {
        bibleStudyTab.assertSelected()
    }
    
    func thenFeedTabSelected() {
        feedTab.assertSelected()
        
    }
    
    func thenExploreTabSelected() {
        exploreTab.assertSelected()
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
    func whenINavigateToFeedTab(){
        feedTab.assertExistence(isElementStatic: true)
        feedTab.tap()
        
    }
    func whenINavigateExploreTab() {
        exploreTab.assertExistence(isElementStatic: true)
        exploreTab.tap()
    }
}
