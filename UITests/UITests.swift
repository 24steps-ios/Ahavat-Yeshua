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
    
    lazy var BibleReadingScreen: BibleReadingScreen = .init(app: app)
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
    func testHomeScreenNavigation() {              //couldn't mute part of code 
        
        // WHEN I navigate to Bible Reading:
        //app.staticTexts["Bible Reading"].assertExistenceAndTap()
        homeScreen.whenINavigateToBibleReadingScreen()
        // THEN Bible Reading screen appears:
         bibleReadingScreen.thenScreenAppears()
       // app.buttons["Show Verse"].assertExistence()
        // WHEN I tap back button
        bibleReadingScreen.whenITapBackButton()
        //app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        // app.staticTexts["Bible Reading"].assertExistence()
        homeScreen.thenIAssertBibleReadingGroupAppears()
      
        
         
        // WHEN I navigate to Profile
        //app.staticTexts["Profile"].assertExistence()
        app.staticTexts["Profile"].assertExistenceAndTap()
        // THEN Profile screen appears
        app.navigationBars["Profile"].assertExistence() //changed TITLE
        // WHEN I tap back button
        //app.buttons["Back"].assertExistence()
        app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        app.staticTexts["Profile"].assertExistence()
        
        // WHEN I navigate to Donation
       // app.staticTexts["Donation"].assertExistence()
        app.staticTexts["Donation"].assertExistenceAndTap()
        // THEN Donation screen appears
        let totalAmountPredicate:NSPredicate = .init(format: "label CONTAINS 'Total Amount'") //predicate
        app.staticTexts.matching(totalAmountPredicate).firstMatch.assertExistence()        //predicate
        // WHEN I tap back button
       // app.buttons["Back"].assertExistence()
        app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        app.staticTexts["Donation"].assertExistence()
        
        
        // WHEN I navigate to Live Stream
       // app.staticTexts["Live Stream"].assertExistence()
        app.staticTexts["Live Stream"].assertExistenceAndTap()
        // THEN Live Stream screen appears
       // app.staticTexts["Live Stream"].assertExistence(timeout: 10) //?????? nothing appears
        // WHEN I tap back button
        //app.buttons["Back"].assertExistence()
        app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        app.staticTexts["Live Stream"].assertExistence()
        
        
        // WHEN I navigate to Multi-selection
        //app.staticTexts["Multi-selection"].assertExistence()
        app.staticTexts["Multi-selection"].assertExistenceAndTap()
        // THEN Multi-selection screen appears
        app.staticTexts["Select Activities"].assertExistence()
        // WHEN I tap back button
       // app.buttons["Back"].assertExistence()
        app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        app.staticTexts["Multi-selection"].assertExistence()
        
        
        // WHEN I navigate to Holy Places Map
        //app.staticTexts["Holy Places Map"].assertExistence()
        app.staticTexts["Holy Places Map"].assertExistenceAndTap()
        // THEN Holy Places Map screen appears
        app.buttons["plus.circle.fill"].assertExistence()
        // WHEN I tap back button
        //app.buttons["Back"].assertExistence()
        app.buttons["Back"].assertExistenceAndTap()
        // THEN home screen appears
        app.staticTexts["Holy Places Map"].assertExistence()
        }
}




