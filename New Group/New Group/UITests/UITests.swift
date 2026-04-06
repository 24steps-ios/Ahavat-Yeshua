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
    
    lazy var myProfile: MyProfile = .init(app: app)
    lazy var myChurch: MyChurch = .init(app: app)
    
    
    // MARK: Tests
    func testMainScreens() {
        homeScreen
            .thenIAssert(.homeScreenTitle)
        
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
            .thenIAssert(.homeScreenTitle)
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
            .whenINavigate(to: .bibleReadingScreen)
        bibleReadingScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.bibleReadingScreen)
            .whenINavigate(to: .profileScreen)
        profileScreen
            .thenScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.profileScreen)
            .whenINavigate(to: .donationScreen)
        donationScreen
            .thenDonationScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.donationScreen)
            .whenINavigate(to: .liveStreamScreen)
        liveStreamScreen
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.liveStreamScreen)
            .whenINavigate(to: .multiSelectionScreen)
        multiSelectionScreen
            .thenMultiSelectionScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.multiSelectionScreen)
            .whenINavigate(to: .holyPlacesMapScreen)
        holyPlacesMapScreen
            .thenHolyPlacesMapScreenAppears()
            .whenITapBackButton()
        homeScreen
            .thenIAssert(.holyPlacesMapScreen)
    }
    
    func testMyProfileScreenNavigation() {
        let userName: String = "Boby"
        homeScreen.whenINavigate(to: .profileScreen)
        profileScreen.thenScreenAppears()
        profileScreen.whenINavigateToMyProfile()
        myProfile.thenMyProfileTitleAppears()
        myProfile.whenITapEditButton()
        
        myProfile.givenISetName(userName)
        myProfile.whenITapBackProfileButton()
        profileScreen.thenUserNameMatch(userName)
        //profileScreen.whenTapBackButton()
        //homeScreen.thenUserNameMatch()   bannerHasSameUserName()
        print("")
        
    }
}
