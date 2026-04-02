//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/9/26.
//
import XCTest

final class HomeScreen: BaseScreen {
    
    // MARK: StaticTexts
    /// ID's better to do like staticTexts instead buttons
    //    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    //        lazy var bibleReading: XCUIElement = app.staticTexts["Bible Reading"]
    //        lazy var profile: XCUIElement = app.staticTexts["Profile"]
    //        lazy var donation: XCUIElement = app.staticTexts["Donation"]
    //        lazy var liveStream: XCUIElement = app.staticTexts["Live Stream"]
    //        lazy var multiSelection: XCUIElement = app.staticTexts["Multi-selection"]
    //        lazy var holyPlacesMap: XCUIElement = app.staticTexts["Holy Places Map"]
    
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


