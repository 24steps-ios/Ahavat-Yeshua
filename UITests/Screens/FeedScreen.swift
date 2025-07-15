//
//  FeedScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//

import XCTest

final class FeedScreen: BaseScreen {
    lazy var feedScreenSearchFeild: XCUIElement = app.textFields.firstMatch
    
    // MARK: Then
    @discardableResult
    func thenIAssertScreen() -> Self  {
        feedScreenSearchFeild.assertExistence()
        return self
    }
}
