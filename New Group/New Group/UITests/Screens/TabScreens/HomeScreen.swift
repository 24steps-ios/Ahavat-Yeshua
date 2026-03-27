//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/9/26.
//
import XCTest

final class HomeScreen: BaseScreen {
    
    // MARK:Buttons
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleReadingText: XCUIElement = app.staticTexts["Bible Reading"]
    lazy var profile: XCUIElement = app.images["person.circle"]
    lazy var donation: XCUIElement = app.buttons["Donation"]
    lazy var liveStream: XCUIElement = app.buttons["Live Stream"]
    lazy var multiSelection: XCUIElement = app.buttons["Multi-selection"]
    lazy var holyPlacesMap: XCUIElement = app.buttons["Holy Places Map"]
  
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self {
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
        profile.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertDonationGroupAppears() -> Self {
        donation.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertLiveStreamGroupAppears() -> Self {
        liveStream.assertExistence()
        return self
    }
    
    @discardableResult
    func thenIAssertMultiSelectionGroupAppears() -> Self {
        multiSelection.assertExistence()
        return self
    }
    
    @discardableResult
   func  thenIAssertHolyPlacesMapGroupAppears() -> Self {
       holyPlacesMap.assertExistence()
       return self
   }
    
    // MARK: When
    @discardableResult
    func whenINavigateBibleReadingScreen() -> Self {
        bibleReadingText.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenINavigateProfileScreen() -> Self {
        profile.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenINavigateDonationScreen() -> Self {
        donation.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenINavigateLiveStreamScreen() -> Self {
        liveStream.assertExistenceAndTap(timeout: 30)
        return self
    }
    
    @discardableResult
    func whenINavigateMultiSelectionScreen() -> Self {
        multiSelection.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
   func whenINavigateHolyPlacesMapScreen() -> Self {
            holyPlacesMap.assertExistenceAndTap()
       return self
    }
}


