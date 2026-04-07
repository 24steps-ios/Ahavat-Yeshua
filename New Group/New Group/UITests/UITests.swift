//
//  UITests.swift
//  UITests
//
//  Created by Ilya Sheynblat on 2/19/26.
//NavigationTabBar Testing!:
// Test
import XCTest

class UITests: Runner {
    
    // MARK: TAbScreens
    lazy var homeScreen: HomeScreen = .init(app: app)
    lazy var bibleStudyScreen: BibleStudyScreen = .init(app: app)
    lazy var feedScreen: FeedScreen = .init(app: app)
    lazy var exploreScreen: ExploreScreen = .init(app: app)
    
    // MARK: HomeScreens
    lazy var bibleReadingScreen: BibleReadingScreen = .init(app: app)
    lazy var profileScreen: ProfileScreen = .init(app: app)
    lazy var donationScreen: DonationScreen = .init(app: app)
    lazy var liveStreamScreen: LiveStreamScreen = .init(app: app)
    lazy var multiSelectionScreen: MultiSelectionScreen = .init(app: app)
    lazy var holyPlacesMapScreen: HolyPlacesMapScreen = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
    
    
    // MARK: Tests
    func testMainScreens() {
        homeScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .bibleStudyTab)
        bibleStudyScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .feedTab)
        feedScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .exploreTab)
        exploreScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigate(to: .homeTab)
        homeScreen
            .thenIAssertScreen()
    }
    
    func testNavigationTabBar() { //chaining
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .bibleStudyTab)
            .thenBibleStudyTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .feedTab)
            .thenFeedTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .exploreTab)
            .thenExploreTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigate(to: .homeTab)
            .thenHomeTabSelected()
            .thenAllTabsAppear()
    }
    
    func testHomeScreenNavigation1() {
        homeScreen
            .whenINavigate(to: .bibleReading)
        bibleReadingScreen
            .thenScreenAppears()
        bibleReadingScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssertGroupAppears(.bibleReading)
        
        homeScreen
            .whenINavigate(to: .profile)
        profileScreen
            .thenProfileScreenAppears()
        profileScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssertGroupAppears(.profile)
        
        homeScreen
            .whenINavigate(to: .donation)
        donationScreen
            .thenDonationScreenAppears()
        donationScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssertGroupAppears(.donation)
        
        homeScreen
            .whenINavigate(to: .multiSelection)
        multiSelectionScreen
            .thenMultiSelectionScreenAppears()
        multiSelectionScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssertGroupAppears(.multiSelection)
        
        homeScreen
            .whenINavigate(to: .holyPlacesMap)
        holyPlacesMapScreen
            .thenHolyPlacesMapScreenAppears()
        holyPlacesMapScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssertGroupAppears(.holyPlacesMap)
    }
    //MARK: TabBar
    lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
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
