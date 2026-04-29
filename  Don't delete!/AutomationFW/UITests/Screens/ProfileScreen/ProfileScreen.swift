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
    lazy var profileTitel: XCUIElement =
    app.staticTexts["Profile"]
    lazy var defaultUserName: XCUIElement = app.staticTexts["Michaela"]
    

    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        profileTitel.assertExistence()
        return self
    }
    
    @discardableResult
    func thenDefaultUserNameAppears() -> Self {
        defaultUserName.assertExistence()
        return self
    }
    
    @discardableResult
    func thenUserNameMatch(_ user: TestUser) -> Self {
        if let userName = user.userName{
            let userName: XCUIElement = app.staticTexts[userName]
            userName.assertExistence()
        }
        return self
    }
    
    //MARK: When
    ///Enum func, instead whenINavigateToMyChurch() and  whenINavigateToMyProfile()
    @discardableResult
    func whenINavigate(to profile: Profile) -> Self {
        let button: XCUIElement = app.staticTexts[profile.rawValue]
    button.assertExistenceAndTap()
        return self
    }
}
