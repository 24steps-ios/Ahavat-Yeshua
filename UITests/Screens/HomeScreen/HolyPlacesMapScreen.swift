//
//  HolyPlacesMap.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class HolyPlacesMapScreen:  BaseScreen {
    
    
    // MARK: Buttons
    lazy var backButton: XCUIElement = app.buttons["Back"]
    lazy var plusCircleFillButton: XCUIElement = app.buttons["plus.circle.fill"]
    
    // MARK: Then
    func thenScreenAppears() {
    plusCircleFillButton.assertExistence()
    }
    
    // MARK: When
    func whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}

