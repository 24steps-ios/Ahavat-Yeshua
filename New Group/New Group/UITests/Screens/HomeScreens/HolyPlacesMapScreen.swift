//
//  HolyPlacesMapScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class HolyPlacesMapScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var plusCircle: XCUIElement = app.buttons["plus.circle.fill"]
    
    //MARK: StaticTexts
    lazy var holyPlacesMap: XCUIElement = app.staticTexts["Holy Places Map"]
    
    // MARK: Then
    @discardableResult
    func thenHolyPlacesMapScreenAppears() -> Self {
        plusCircle.assertExistence()
        return self
    }
}
   
