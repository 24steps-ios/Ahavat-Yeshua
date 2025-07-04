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
    lazy var allTabs: XCUIElementQuery = app.tabBars.buttons

    // MARK: Enums
    enum Tab: String {
        case homeTab = "Home"
        case bibleStudyTab = "Bible Study"
        case feedTab = "Feed"
        case exploreTab = "Explore"
    }
    
    // MARK: THEN
    @discardableResult       //type of class
    func thenHomeTabAppears() -> Self {
        homeTab.assertExistence()
return self
    }
    
    @discardableResult
    func thenHomeTabSelected() -> Self  {
        homeTab.assertSelected()
        return self
    }
    
    @discardableResult
    func thenAllTabsAppear()  -> Self {
        allTabs.assertEqual(expectation: 4)
        return self
    }
    
    @discardableResult
    func thenBibleStudyTabAppears()  -> Self {
        bibleStudyTab.assertExistence()
        return self
    }
    
    @discardableResult
    func thenFeedTabAppears() -> Self  {
        feedTab.assertExistence()
        return self
    }
    
    @discardableResult
    func thenExploreTabAppears()  -> Self {
        exploreTab.assertExistence()
        return self
    }
    
    // MARK: When
    @discardableResult // func of enum
    func whenINavigate(to tab: Tab) -> Self {
        let tab: XCUIElement = app.tabBars.buttons[tab.rawValue]
        tab.assertExistence(isElementStatic: true)
        return self
    }
}
//    // MARK: WHEN
//     
//    func whenINavigateToHomeTab() {
//        homeTab.assertExistence(isElementStatic: true)
//        homeTab.tap()
//    }
//    
//    func whenINavigateToBibleStudyTab() {
//        bibleStudyTab.assertExistence(isElementStatic: true)
//        bibleStudyTab.tap()
//    }
//    
//    func whenINavigateToFeedTab() {
//        feedTab.assertExistence(isElementStatic: true)
//        feedTab.tap()
//    }
//    
//    func whenINavigateToExploreTab() {
//        exploreTab.assertExistence(isElementStatic: true)
//        exploreTab.tap()
//    }
