//
//  LiveStreamScreen .swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/12/25.
//
import XCTest

final class LiveStreamScreen: BaseScreen {
    // MARK: Static Texts
    lazy var liveStreamText: XCUIElement = app.staticTexts["Live Stream"]
    
    // MARK: Then
    @discardableResult
    func  thenScreenAppears() -> Self {
        liveStreamText.assertExistence(timeout: 10)
        return self
    }
}
    

    
 
    

