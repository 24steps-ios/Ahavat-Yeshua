//
//  UITests.swift
//  UITests
//
//  Created by Ilya Sheynblat on 2/19/26.
//NavigationTabBar Testing!:

import XCTest

class UITests: Runner {
    // MARK: Static Texts
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts[" Growth in Faith"]
    
    // MARK: TextFields
    lazy var feedScreenSearchField: XCUIElement = app.textFields["Search users or posts"]
    
    // MARK: Buttons
    lazy var exploreScreenQuizCell: XCUIElement = app.buttons["📖 Faith-Based Quiz"]
    
    //MARK: TabBar
    lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
    // MARK: Tests
    func testMainScreens() {
        homeScreenTitle.assertExistence()
        homeTab.assertExistence()
        
        bibleStudyTab.tap()
        bibleStudyTab.assertExistence()
        bibleStudyScreenTitle.assertExistence()
        
        feedTab.tap()
        feedTab.assertExistence()
        feedScreenSearchField.assertExistence()
        
        exploreTab.tap()
        exploreTab.assertExistence()
        exploreScreenQuizCell.assertExistence()
    }
    
    func testNavigationTabBar() {
        // homeTab isSelected
        // app.tabBars.count == 4
        
        // bibleStudyTab.tap()
        // app.tabBars.count == 4
        //bibleStudyTab button is Selected
        
        // feedTab.tap()
        // app.tabBars.count == 4
        //feed button is Selected
        
        // explore.tap()
        // app.tabBars.count == 4
        //bibleStudyTab button is Selected
        
        //homeTab.tap()
        //app.tabBars.count == 4
        // homeTab isSelected
        
    }
}

