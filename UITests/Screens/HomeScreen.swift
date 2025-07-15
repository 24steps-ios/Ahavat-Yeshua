//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
import XCTest

final class HomeScreen: BaseScreen {
    // MARK: Enums
    enum Screen: String {
        case homeScreen = "homeView_title"
        case bibleReadingScreen = "Bible Reading"
        case profileScreen = "Profile"
        case liveStreamScreen = "Live Stream"
        case donationScreen = "Donation"
        case multiSelectionScreen = "Multi-selection"
        case holyPlaceMapScreen = "Holy Places Map"
    }
    
     // MARK: Then
    @discardableResult
    func thenIAssert(_ screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistence()
        return self
    }
    
    // MARK: When
    @discardableResult
    func whenINavigate(to screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func whenITapBackButton(_ screen: Screen) -> Self {
        let backButton: XCUIElement = app.buttons["Back"]
        backButton.assertExistenceAndTap()
        return self
    }
    
}
