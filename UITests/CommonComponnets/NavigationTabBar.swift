//
//  Untitled.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/18/25.
//
import XCTest

final class NavigationTabBar: BaseScreen {
   // MARK: TabBar
     lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]  // Create Home Tab variable
     lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
     lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
     lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
    //MARK: WHEN
    
    func whenINavigateToHomeTab() {
        homeTab.assertExistence(isElementStatic: true) //THEN
        homeTab.tap() //WHEN
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
