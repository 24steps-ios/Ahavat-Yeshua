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
    
    //MARK: Enums
    enum Tab: String {
        case homeTab = "Home"
        case bibleStudyTab = "Bible Study"
        case feedTab = "Feed"
        case exploreTab = "Explore"
    }
    
    // MARK: Then
    @discardableResult
    func thenHomeTabAppears() -> Self {
        homeTab.assertExistence()
        return self
    }
    
    @discardableResult
    func thenHomeTabSelected() -> Self  {
        homeTab.assertSelected()
        return self     // extension for Single Element
    }
    
    @discardableResult
    func thenAllTabsAppear() -> Self  {
        allTabs.assertEqual(4)
        return self// extension for List Element
    }
    
    @discardableResult
    func thenBibleStudyTabSelected() -> Self  {
        bibleStudyTab.assertSelected()
        return self
    }
    
    @discardableResult
    func thenFeedTabSelected() -> Self  {
        feedTab.assertSelected()
        return self
    }
    
    @discardableResult
    func thenExploreTabSelected() -> Self  {
        exploreTab.assertSelected()
        return self
    }
    
    @discardableResult
    func whenINavigate(to tab: Tab) -> Self {
            let tab: XCUIElement = app.tabBars.buttons[tab.rawValue]
            tab.assertExistenceAndTap()
        return self
        }
    }
