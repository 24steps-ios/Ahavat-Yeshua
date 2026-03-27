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
            .whenINavigateToBibleStudyTab()
        bibleStudyScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigateToFeedTab()
        feedScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigateExploreTab()
        exploreScreen
            .thenIAssertScreen()
        
        navigationTabBar
            .whenINavigateToHomeTab()
        homeScreen
            .thenIAssertScreen()
    }
    
    func testNavigationTabBar() { //chaining
        navigationTabBar
            .thenHomeTabAppears()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigateToBibleStudyTab()
            .thenBibleStudyTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigateToFeedTab()
            .thenFeedTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigateExploreTab()
            .thenExploreTabSelected()
            .thenAllTabsAppear()
        
            .whenINavigateToHomeTab()
            .thenHomeTabSelected()
            .thenAllTabsAppear()
    }
    
    func testHomeScreenNavigation1() {
        // WHEN I navigate to bible Reading
        homeScreen.whenINavigateBibleReadingScreen()
        // THEN BibleReadingScreen() appears
        bibleReadingScreen.thenScreenAppears()
        // WHEN I Assert and tap backButton.tap()
        bibleReadingScreen.whenITapBackButton()
        // THEN IAssertBibleReadingGroup appears
        // app.staticTexts["Bible Reading"].assertExistence()
        homeScreen.thenIAssertBibleReadingGroupAppears()
        
        // WHEN I navigate to profileScreen
        homeScreen.whenINavigateProfileScreen()
        // THEN profile screen appears
        profileScreen.thenProfileScreenAppears()
        // WHEN I TAP BACK BUTTON
        profileScreen.whenITapBackButton()
        // THEN IAssertProfileGroupAppears()
        homeScreen.thenIAssertProfileGroupAppears()
        
        
        homeScreen.whenINavigateDonationScreen()
        //donation.assertExistenceAndTap()
        donationScreen.thenDonationScreenAppears()
        //donationTitle.assertExistence()
        donationScreen.whenITapBackButton()
        //   backButton.assertExistenceAndTap()
        // thenIAssertDonationGroupAppears()
        homeScreen.thenIAssertDonationGroupAppears()
        
        homeScreen.whenINavigateLiveStreamScreen()
        // liveStream.assertExistenceAndTap(timeout: 30) //loading page stuck
        liveStreamScreen.thenLiveStreamScreenAppears()
        //        searchYouTube.assertExistence()
        liveStreamScreen.whenITapBackButton()
        //        backButton.assertExistenceAndTap()
        // thenIAssertLiveStreamGroupAppears()
        homeScreen.thenIAssertLiveStreamGroupAppears()
        
        homeScreen.whenINavigateMultiSelectionScreen()
        //        multiSelection.assertExistenceAndTap()
        multiSelectionScreen.thenMultiSelectionScreenAppears()
        //        multiSelectionTitle.assertExistence()
        multiSelectionScreen.whenITapBackButton()
        //        backButton.assertExistenceAndTap()
        // thenIAssertMultiSelectionGroupAppears()
        homeScreen.thenIAssertMultiSelectionGroupAppears()
        
        homeScreen.whenINavigateHolyPlacesMapScreen()
        //        holyPlacesMap.assertExistenceAndTap()
        holyPlacesMapScreen.thenHolyPlacesMapScreenAppears()
        //        plusCircle.assertExistence()
        holyPlacesMapScreen.whenITapBackButton()
        //        backButton.assertExistenceAndTap()
        // thenIAssertHolyPlacesMapGroupAppears()
        homeScreen.thenIAssertHolyPlacesMapGroupAppears()
    }
}
