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
    lazy var multi_selectionText: XCUIElement = app.staticTexts["Multi-selection"]
    lazy var holyPlacesMapText: XCUIElement = app.staticTexts["Holy Places Map"]
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self {
        homeScreenTitle.assertExistence()
        return self
        
    }
    @discardableResult
    func thenIAssertBibleReadingGroupAppears()  -> Self {
        bibleReadingText.assertExistence()
        return self
    }
    @discardableResult
    func thenIAssertProfileGroupAppears()  -> Self {
        profileText.assertExistence()
        return self
    }
    @discardableResult
    func thenIAssertDonationGroupAppears()  -> Self {
        donationText.assertExistence()
        return self
    }
    @discardableResult
    func thenIAssertLiveStreamGroupAppears() -> Self {
        liveStreamText.assertExistence()
        return self
   
    }
    @discardableResult
    func thenIAssertMulti_selectionGroupAppears() -> Self {
        multi_selectionText.assertExistence()
        return self
   
    }
    @discardableResult
    func thenIAssertHolyPlacesMapGroupAppears() -> Self {
        holyPlacesMapText.assertExistence()
        return self
   
    }
    
    // MARK: When
    @discardableResult
    func whenINavigateToBibleReadingScreen() -> Self {
        bibleReadingText.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenINavigateProfileScreen()  -> Self {
        profileText.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenINavigateDonationScreen() -> Self {
        profileText.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenINavigateLiveStreamScreen() -> Self {
        liveStreamText.assertExistenceAndTap()
        return self
        
    }
    
    @discardableResult
    func whenINavigateMulti_selectionScreen() -> Self {
        multi_selectionText.assertExistenceAndTap()
        return self
        
    }
    
    @discardableResult
    func whenINavigateHolyPlacesMapScreenAppears() -> Self  {
        holyPlacesMapText.assertExistenceAndTap()
        return self
    }
}

