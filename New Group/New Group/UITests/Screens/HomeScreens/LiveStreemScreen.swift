//
//  LiveStreemScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class LiveStreamScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var liveStream: XCUIElement = app.buttons["Live Stream"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    lazy var searchYouTube: XCUIElement = app.buttons["Search YouTube"]
   
    
    // MARK: Then
    func thenLiveStreamScreenAppears(timeout: TimeInterval = 30) {
        searchYouTube.assertExistence()
    }
    
    // MARK: When
    func  whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
