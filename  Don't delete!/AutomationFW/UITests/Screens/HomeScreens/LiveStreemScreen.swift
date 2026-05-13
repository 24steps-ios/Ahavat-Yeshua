//
//  LiveStreemScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class LiveStreamScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var searchYouTube: XCUIElement = app.buttons["Search YouTube"]
    
    //MARK: StaticTexts
    lazy var liveStream: XCUIElement = app.staticTexts["Live Stream"]
    
    // MARK: Then
    @discardableResult
    func thenLiveStreamScreenAppears() -> Self {
        searchYouTube.assertExistence()
        return self
    }
}

