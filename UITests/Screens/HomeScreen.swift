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
    
    //MARK: Static Texts
    lazy var defaultBannerText: XCUIElement = app.staticTexts["Friend"]
    
    //MARK: Enums
    enum Group: String {
        case bibleReadingScreen = "bible_reading" // Home work : Add AIDs for all casesshere
        case profileScreen = "profile" //aid
        case donationScreen = "donation"
        case liveStreamScreen = "live_stream"
        case multiSelectionScreen = "multi_selection"
        case holyPlacesMapScreen = "holy_places_map"
    }
    //MARK: When
    @discardableResult // func of enum when
    func whenINavigate(to screen: Group) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
    
    //MARK: Then
    @discardableResult  // func of enum. type data(enum:Screen)
    func thenIAssert(_ screen: Group) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
        screen.assertExistence()
        return self
    }
    
    @discardableResult
    func thenScreenAppears() -> Self {
        bannerImage.assertExistence()
        return self
    }
    
    @discardableResult  //FUNC if Body on banner exist. type data(String)
    //need TestUser instead userName
    func thenUserNameMatch(_ user: TestUser)  -> Self {
        let userName: XCUIElement = app.staticTexts[user.userName]
        userName.assertExistence()
        return self
    }
    
    @discardableResult
    func thenBannerTextShowDefault()  -> Self  {
        defaultBannerText.assertExistence()
        return self
    }
    
}
