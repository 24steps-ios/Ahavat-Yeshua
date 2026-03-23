//
//  UITests.swift
//  UITests
//
//  Created by Ilya Sheynblat on 2/19/26.
//NavigationTabBar Testing!:
// Test
import XCTest

class UITests: Runner {
    
    // MARK: Screens // CUSTOM
    lazy var homeScreen: HomeScreen = .init(app: app)
    lazy var bibleStudyScreen: BibleStudyScreen = .init(app: app)
    lazy var feedScreen: FeedScreen = .init(app: app)
    lazy var exploreScreen: ExploreScreen = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
    
    //    //MARK: TabBar elements
    //    let tabBar = app.tabBars.firstMatch
    //       let bibleStudyTab = app.tabBars.buttons["BibleStudy"]
    
    // MARK: Tests
    func testMainScreens() {
        homeScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToBibleStudyTab()
        bibleStudyScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToFeedTab()
        feedScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateExploreTab()
        exploreScreen.thenIAssertScreen()
        
        navigationTabBar.whenINavigateToHomeTab()
        homeScreen.thenIAssertScreen()
    }
    
    
    func testNavigationTabBar() {
        navigationTabBar.thenHomeTabAppears()
        navigationTabBar.thenHomeTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateToBibleStudyTab()
        navigationTabBar.thenBibleStudyTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateToFeedTab()
        navigationTabBar.thenFeedTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateExploreTab()
        navigationTabBar.thenExploreTabSelected()
        navigationTabBar.thenAllTabsAppears()
        
        navigationTabBar.whenINavigateToHomeTab()
        navigationTabBar.thenHomeTabSelected()
        navigationTabBar.thenAllTabsAppears()
    }
    
    // b4
    // assert(element, error massage)
    //  XCTAssertEqual(app.tabBars.buttons.count, 4)
    
    // After
    // given, then,when contains -> element.assert()
    
    
    
    // MARK: Buttons
    lazy var bibleReading: XCUIElement = app.buttons["Bible Reading"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    lazy var profile: XCUIElement = app.buttons["Profile"]
    lazy var donation: XCUIElement = app.buttons["Donation"]
    lazy var multiSelection: XCUIElement = app.buttons["Multi-selection"]
    lazy var holyPlacesMap: XCUIElement = app.buttons["Holy Places Map"]
    lazy var plusCircle: XCUIElement = app.buttons["plus.circle.fill"]
    lazy var liveStream: XCUIElement = app.buttons["Live Stream"]
    
    // MARK: Images
    lazy var bibleReadingIcon: XCUIElement = app.images["book"]
    lazy var profileIcon: XCUIElement = app.images["person.circle"]
    lazy var donationIcon: XCUIElement = app.images["creditcard"]
    lazy var multiSelectionIcon: XCUIElement = app.images["square.stack.3d.down.forward"]
    lazy var holyPlacesMapIcon: XCUIElement = app.images["map"]
    lazy var liveStreamIcon: XCUIElement = app.images["play.circle"]
    
    // MARK: TextFields
    lazy var bibleReadingSearchField: XCUIElement = app.textFields.firstMatch
    
    // MARK: Static Texts
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var donationTitle: XCUIElement = app.staticTexts
        .matching(NSPredicate(format: "label BEGINSWITH 'Total Amount'"))
        .element
    lazy var multiSelectionTitle: XCUIElement = app.staticTexts["Select Activities"]
    
    // MARK: NavigationBars
    lazy var navigationBarTitle: XCUIElement = app.navigationBars["Profile"]
    
    
    func testNavigationHomeScreen() {
       // homeScreenTitle.assertExistence()
        homeScreen.thenIAssertScreen()
        bibleReadingIcon.assertExistence()
        bibleReading.tap()
        bibleReadingSearchField.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        profileIcon.assertExistence()
        profile.tap()
        navigationBarTitle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        donationIcon.assertExistence()
        donation.tap()
        donationTitle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        liveStreamIcon.assertExistence()
        liveStream.tap()
        backButton.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        multiSelectionIcon.assertExistence()
        multiSelection.tap()
        multiSelectionTitle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        holyPlacesMapIcon.assertExistence()
        holyPlacesMap.tap()
        plusCircle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
    }
}
