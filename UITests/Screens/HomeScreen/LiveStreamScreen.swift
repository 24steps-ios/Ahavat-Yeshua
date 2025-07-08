//
//  LiveStream.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class LiveStreamScreen: BaseScreen {
    lazy var liveStreamButton: XCUIElement = app.staticTexts["Live Stream"]
    
    // MARK: Then
    func thenLiveStreamScreenAppears() {
        liveStreamButton.assertExistence(timeout: 10)
    }
}

