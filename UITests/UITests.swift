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
        XCTAssertEqual(app.tabBars.buttons.count, 4)
        XCTAssertTrue(homeTab.isSelected)
        
        bibleStudyTab.tap()
        XCTAssertEqual(app.tabBars.buttons.count, 4)
        XCTAssertTrue(bibleStudyTab.isSelected)
        
        feedTab.tap()
        XCTAssertEqual(app.tabBars.buttons.count, 4)
        XCTAssertTrue(feedTab.isSelected)
        
        exploreTab.tap()
        XCTAssertEqual(app.tabBars.buttons.count, 4)
        XCTAssertTrue(exploreTab.isSelected)
        
        homeTab.tap()
        XCTAssertEqual(app.tabBars.buttons.count, 4)
        XCTAssertTrue(homeTab.isSelected)
    }
}

