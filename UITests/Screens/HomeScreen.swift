//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class HomeScreen: BaseScreen {
    
    // MARK: Static Texts
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleReadingText: XCUIElement = app.staticTexts["Bible Reading"]
    lazy var profileText: XCUIElement = app.staticTexts["Profile"]
    lazy var donationText: XCUIElement = app.staticTexts["Donation"]
    lazy var liveStreamText: XCUIElement = app.staticTexts["Live Stream"]
    lazy var multiSelectionText: XCUIElement = app.staticTexts["Multi-selection"]
    lazy var holyPlacesMapText: XCUIElement = app.staticTexts["Holy Places Map"]
    
    //MARK: Enums
    enum Screen: String {
        case homeScreen = "homeView_title"
        case bibleReadingScreen = "Bible Reading"
        case profileScreen = "Profile"
        case donationScreen = "Donation"
        case liveStreamScreen = "Live Stream"
        case multiSelectionScreen = "Multi-Selection"
        case holyPlacesMapScreen = "Holy Places Map"
    }
    @discardableResult // func of enum
    func whenINavigate(to screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistence()
        return self
    }

    
    // MARK: Then
    @discardableResult
    func thenIAssertHomeScreen() -> Self {
        homeScreenTitle.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertBibleReadingGroupAppears() -> Self {
        bibleReadingText.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertProfileGroupAppears() -> Self {
        profileText.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertDonationGroupAppears() -> Self {
        donationText.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertLiveStreamGroupAppears() -> Self {
        liveStreamText.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertMultiSelectionGroupAppears() -> Self {
        multiSelectionText.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertHolyPlacesMapGroupAppears() -> Self {
        holyPlacesMapText.assertExistence()
        return self
    }
}
    
    
    //    // MARK: When
    //    @discardableResult
    //    func whenINavigateToBibleReadingScreen() -> Self {
    //        bibleReadingText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateProfileScreen() -> Self {
    //        profileText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateDonationScreen() -> Self {
    //        profileText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateLiveStreamScreen() -> Self {
    //        liveStreamText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateMultiSelectionScreen() -> Self {
    //        multiSelectionText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateHolyPlacesMapScreen() -> Self  {
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateProfileScreen() -> Self {
    //        profileText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateDonationScreen() -> Self {
    //        profileText.assertExistenceAndTap()
    //        return self
    //    }
    //
    //    @discardableResult
    //    func whenINavigateLiveStreamScreen() -> Self {
    //        liveStreamText.assertExistenceAndTap()
    //        return self
    //
    //    }
    //
    //    @discardableResult
    //    func whenINavigateMultiSelectionScreen() -> Self {
    //        multiSelectionText.assertExistenceAndTap()
    //        return self
    //
    //    }
    //
    //    @discardableResult
    //    func whenINavigateHolyPlacesMapScreen() -> Self {
    //        holyPlacesMapText.assertExistenceAndTap()
    //        return self
    //    }
    //}

