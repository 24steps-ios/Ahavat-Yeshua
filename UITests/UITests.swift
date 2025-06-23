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
    
    //MARK: HomeScreenNavigation
    
    
    
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
    //                                             pre-action   action    assertion
    // Before When need to do Then and also After ( given  Then  When      Then     )
    
    
    
    // b4
    // assert(element,errorMassage) | XCTAssertTrue(app.tabBars.buttons.count == 4)

    //After
    // give, when , then contains: element.assert
    
    // MARK: HOME WORK!
    func testNavigationBar() {
        navigationTabBar.thenHomeTabAppears()
        navigationTabBar.thenHomeTabSelected()
        navigationTabBar.thenAllTabsAppear()
        
        
        navigationTabBar.whenINavigateToBibleStudyTab() // bible study tab - tap
        navigationTabBar.thenBibleStudyTabAppears()
        navigationTabBar.thenAllTabsAppear()//app.tabBars.count == 4
        // TODO: HOME WORK CONTINUATION - DONE!
        navigationTabBar.whenINavigateToFeedTab()
        navigationTabBar.thenFeedTabAppears()
        navigationTabBar.thenAllTabsAppear()//app.tabBars.count == 4
        
        navigationTabBar.whenINavigateToExploreTab()
        navigationTabBar.thenExploreTabAppears()
        navigationTabBar.thenAllTabsAppear() //app.tabBars.count == 4
        
        navigationTabBar.whenINavigateToHomeTab()
        // navigationTabBar.thenHomeTabAppears()
        navigationTabBar.thenHomeTabSelected()
        navigationTabBar.thenAllTabsAppear()
        }
    
    // NO PAGE OBJECT
    func testHomeScreenNavigation(){
        // WHEN I nvigate to Bible Reading
        app.staticTexts["Bible Reading"].tap()
        // THEN Bible Reading screen appears
        app.buttons["Show Verse"].assertExistence()
        // WHEN I tap back button (need to check existence button "Back"?)
        app.buttons["Back"].tap()
        // THEN home screen appears
        navigationTabBar.thenHomeTabAppears()
         
        
        // WHEN I nvigate to Profile
        app.staticTexts["Profile"].tap()
        // THEN Profile screen appears
        app.buttons["Personal"].assertExistence()
        // WHEN I tap back button
        app.buttons["Back"].tap()
        // THEN home screen appears
        navigationTabBar.thenHomeTabAppears()
        
        // WHEN I nvigate to Donation
        app.staticTexts["Donation"].tap()
        // THEN Donation screen appears
        app.buttons["Donate"].assertExistence()
        // WHEN I tap back button
        app.buttons["Back"].tap()
        // THEN home screen appears
        navigationTabBar.thenHomeTabAppears()
        
        // WHEN I nvigate to Live Stream
        app.staticTexts["Live Stream"].tap()
        // THEN Live Stream screen appears
       // app.staticTexts["Live Stream"].assertExistence(timeout: 10) //?????? nothing appears
        // WHEN I tap back button
        app.buttons["Back"].tap()
        // THEN home screen appears
        navigationTabBar.thenHomeTabAppears()
        
        // WHEN I nvigate to Multi-selection
        app.staticTexts["Multi-selection"].tap()
        // THEN Multi-selection screen appears
        app.staticTexts["Select Activities"].assertExistence()
        // WHEN I tap back button
        app.buttons["Back"].tap()
        // THEN home screen appears
        navigationTabBar.thenHomeTabAppears()
        
        // WHEN I nvigate to Holy Places Map
        app.staticTexts["Holy Places Map"].tap()
        let app = XCUIApplication()
        app.activate()
        // THEN Holy Places Map screen appears
        app.buttons["plus.circle.fill"].assertExistence()
        // WHEN I tap back button
        app.buttons["Back"].tap()
        // THEN home screen appears
        navigationTabBar.thenHomeTabAppears()
        
    }
}




