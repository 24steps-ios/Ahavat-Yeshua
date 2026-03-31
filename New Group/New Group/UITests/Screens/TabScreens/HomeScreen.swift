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
    lazy var bibleReading: XCUIElement = app.buttons["Bible Reading"]
    lazy var profile: XCUIElement = app.buttons["Profile"]
    lazy var donation: XCUIElement = app.buttons["Donation"]
    lazy var multiSelection: XCUIElement = app.buttons["Multi-selection"]
    lazy var holyPlacesMap: XCUIElement = app.buttons["Holy Places Map"]
    
    //MARK: Enums
    enum Screen: String {
        case bibleReading = "Bible Reading"
        case profile = "Profile"
        case donation = "Donation"
        case multiSelection = "Multi-selection"
        case holyPlacesMap = "Holy Places Map"
    }
    
    enum Group: String {
        case bibleReading = "Bible Reading"
        case profile = "Profile"
        case donation = "Donation"
        case multiSelection = "Multi-selection"
        case holyPlacesMap = "Holy Places Map"
    }
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self {
        homeScreenTitle.assertExistence()
        return self
    }
    
    @discardableResult
    func whenINavigate(to screen: Screen) -> Self {
        let screen: XCUIElement = app.buttons[screen.rawValue]
        screen.assertExistenceAndTap()
        return self
    }
    
    @discardableResult
    func thenIAssertGroupAppears(_ group: Group) -> Self {
        let group: XCUIElement = app.buttons[group.rawValue]
        group.assertExistence()
        return self
    }
}

//    @discardableResult (-> delete those code)
//    func thenIAssertBibleReadingGroupAppears() -> Self {
//        bibleReading.assertExistence()
//        return self
//    }
//
//    @discardableResult
//    func thenIAssertProfileGroupAppears() -> Self {
//        profile.assertExistence()
//        return self
//    }
//
//    @discardableResult
//    func thenIAssertDonationGroupAppears() -> Self {
//        donation.assertExistence()
//        return self
//    }
//
//    @discardableResult
//    func thenIAssertMultiSelectionGroupAppears() -> Self {
//        multiSelection.assertExistence()
//        return self
//    }
//
//    @discardableResult
//   func  thenIAssertHolyPlacesMapGroupAppears() -> Self {
//       holyPlacesMap.assertExistence()
//       return self
//   }
//



// MARK: When (-> delete those code)
//    @discardableResult
//    func whenINavigateBibleReadingScreen() -> Self {
//        bibleReadingText.assertExistenceAndTap()
//        return self
//    }
//
//    @discardableResult
//    func whenINavigateProfileScreen() -> Self {
//        profile.assertExistenceAndTap()
//        return self
//    }
//
//    @discardableResult
//    func whenINavigateDonationScreen() -> Self {
//        donation.assertExistenceAndTap()
//        return self
//    }
//
//    @discardableResult
//    func whenINavigateMultiSelectionScreen() -> Self {
//        multiSelection.assertExistenceAndTap()
//        return self
//    }
//
//    @discardableResult
//   func whenINavigateHolyPlacesMapScreen() -> Self {
//            holyPlacesMap.assertExistenceAndTap()
//       return self
//    }
//}
//
//
