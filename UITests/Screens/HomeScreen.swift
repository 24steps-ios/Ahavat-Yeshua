//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class HomeScreen: BaseScreen {
    //MARK: Enums
    enum Screen: String {
        case homeScreen = "homeView_title"
        case bibleReadingScreen = "Bible Reading"
        case profileScreen = "Profile"
        case donationScreen = "Donation"
        case liveStreamScreen = "Live Stream"
        case multiSelectionScreen = "Multi-selection"
        case holyPlacesMapScreen = "Holy Places Map"
    }
    
    @discardableResult // func of enum
    func whenINavigate(to screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func thenIAssert(_ screen: Screen) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistence()
        return self
    }
}
