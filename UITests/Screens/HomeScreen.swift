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
    
    // MARK: Static Texts
    lazy var defaultText: XCUIElement = app.staticTexts["Friend"]
    
    //MARK: Enums
    enum Group: String {
        case bibleReadingScreen = "bible_reading"
        case profileScreen = "profile"
        case donationScreen = "Donation" // HOME WORK: ADD AIDS FOR ALL CASES HERE
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
    func thenUserNameMatch(_ user: TestUser) -> Self {
        let userName: XCUIElement = app.staticTexts[user.userName]
        userName.assertExistence()
        return self
    }
    
    @discardableResult
     func thenBannerTextShowsDefault()  -> Self  {
         defaultText.assertExistence()
         return self
     }
}
