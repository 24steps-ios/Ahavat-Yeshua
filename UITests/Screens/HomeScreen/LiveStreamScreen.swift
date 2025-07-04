//
//  LiveStream.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class LiveStreamScreen: BaseScreen {
    // MARK: Buttons
    lazy var liveStreamButton: XCUIElement = app.staticTexts["Live Stream"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Then
    func thenLiveStreamScreenAppears() {
        liveStreamButton.assertExistence(timeout: 10)
    
}
    // MARK: When
    
 func whenITapBackButton() {
     backButton.assertExistenceAndTap()
    }
}
                            
