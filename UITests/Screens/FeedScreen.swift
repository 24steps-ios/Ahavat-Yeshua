//
//  Feed.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/18/25.
//

import XCTest

final class FeedScreen: BaseScreen {
  lazy var feedScreenSearchFeild: XCUIElement = app.textFields.firstMatch
    
    // MARK: THEN
    func thenIAssertScreen(){
        feedScreenSearchFeild.assertExistence()
    }
}
