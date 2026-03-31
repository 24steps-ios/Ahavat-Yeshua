//
//  HolyPlacesMapScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class HolyPlacesMapScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var holyPlacesMap: XCUIElement = app.buttons["Holy Places Map"]
    lazy var plusCircle: XCUIElement = app.buttons["plus.circle.fill"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    
    // MARK: Then
    func thenHolyPlacesMapScreenAppears() {
        plusCircle.assertExistence()
    }
    
    // MARK: When
    func  whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
