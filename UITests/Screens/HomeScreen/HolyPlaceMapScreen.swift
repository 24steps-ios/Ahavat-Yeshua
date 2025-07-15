//
//  olyPlaceMapScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/13/25.
//
import XCTest

final class HolyPlaceMapScreen : BaseScreen {
    // MARK: Buttons
    lazy var plusCircleButton: XCUIElement =  app.buttons["plus.circle.fill"]
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        plusCircleButton.assertExistence()
        return self
    }
}
    
    
    




