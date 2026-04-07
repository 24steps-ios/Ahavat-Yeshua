//
//  ProfileScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class ProfileScreen: BaseScreen {
    
    //MARK: Enums
    enum Profile: String {
      case personal = "Personal"
      case church = "Church"
    }
   
    // MARK: Static Texts
    lazy var profile: XCUIElement = app.staticTexts["Profile"]
    lazy var profileTitel: XCUIElement =
    app.staticTexts["Profile"]
//    lazy var personal: XCUIElement = app.staticTexts["Personal"]
//    lazy var church: XCUIElement = app.staticTexts["Church"]
   
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileTitel.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserNameMatch(_ userName: String) -> Self {
        let userName: XCUIElement = app.staticTexts[userName]
        userName.assertExistence()
        return self
    }
    
    //MARK: When
//    @discardableResult
//    func whenINavigateToMyProfile() -> Self  {
//        personal.assertExistenceAndTap()
//        return self
//    }
//    
//    @discardableResult
//    func whenINavigateToMyChurch() -> Self  {
//        church.assertExistenceAndTap()
//        return self
//    }
  
    ///Enum func, instead whenINavigateToMyChurch() and  whenINavigateToMyProfile()
    @discardableResult
    func whenINavigate(to screen: Profile) -> Self {
        let screen: XCUIElement = app.staticTexts[screen.rawValue]
    screen.assertExistenceAndTap()
        return self
    }
}
