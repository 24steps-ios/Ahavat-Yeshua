//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//
import XCTest

final class HomeScreen: BaseScreen {
    // MARK: Images
    lazy var bannerImage: XCUIElement = app.images["Account"]
    
    //MARK: Enums
    enum Group: String {
        case bibleReadingScreen = "Bible Reading"
        case profileScreen = "Profile"
        case donationScreen = "Donation"
        case liveStreamScreen = "Live Stream"
        case multiSelectionScreen = "Multi-selection"
        case holyPlacesMapScreen = "Holy Places Map"
    }
    
    // MARK: When
    @discardableResult // func of enum when
    func whenINavigate(to screen: Group) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
    
    // MARK: Then
    @discardableResult  // func of enum then
    func thenIAssert(_ screen: Group) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistence()
        return self
    }
    
    func thenScreenAppears() {
        bannerImage.assertExistence()
    }
    
    @discardableResult
    func thenUserNameMatch(_ userName: String) -> Self {
        let userName: XCUIElement = app.staticTexts[userName]
        userName.assertExistence()
        return self
    }
}
