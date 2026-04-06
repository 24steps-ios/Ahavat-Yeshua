//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/9/26.
//
import XCTest

final class HomeScreen: BaseScreen {
    
    //MARK: Enums
    enum Screen: String {
        case homeScreenTitle = "homeView_title"
        case bibleReadingScreen = "Bible Reading"
        case profileScreen = "Profile"
        case donationScreen = "Donation"
        case liveStreamScreen = "Live Stream"
        case multiSelectionScreen = "Multi-selection"
        case holyPlacesMapScreen = "Holy Places Map"
    }
    
    // MARK: Then
    /// func erase all thenIAssertHomeScreens() ; ALL  SCREENS!
    @discardableResult
    func thenIAssert(_ screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistence()
        return self
    }
    
    // MARK: When
    /// Enum func screen
    @discardableResult
    func whenINavigate(to screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
}


