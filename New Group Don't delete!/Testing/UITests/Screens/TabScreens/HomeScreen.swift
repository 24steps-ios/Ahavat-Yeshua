//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/9/26.
//
import XCTest

final class HomeScreen: BaseScreen {
    //MARK: Images
   lazy var bannerDefaultText: XCUIElement = app.staticTexts["Welcome to Our Church"]
   
    
    //MARK: Enums
    enum Group: String {
        case homeScreen = "homeView_title"
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
    func thenIAssert(_ screen: Group) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
       screen.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserNameMatch(_ user: TestUser) -> Self {
        let userName: XCUIElement = app.staticTexts[user.userName]
        userName.assertExistence()
        return self
    }
    
    ///func for homeScreen with banner (feature not exists)
    func thenBannerTextShowsDefault() {
        bannerDefaultText.assertExistence()
    }
    
    // MARK: When
    /// Enum func screen
    @discardableResult
    func whenINavigate(to screen: Group) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
}


