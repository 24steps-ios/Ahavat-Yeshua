//
//  HolyPlacesMap.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class HolyPlacesMapScreen:  BaseScreen {
    lazy var plusCircleFillButton: XCUIElement = app.buttons["plus.circle.fill"]
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        plusCircleFillButton.assertExistence()
        return self
    }
}

