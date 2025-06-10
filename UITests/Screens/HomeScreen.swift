//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/9/25.
//

import XCTest

final class HomeScreen: BaseScreen {
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
   
    
    // MARK: Then
    func thenIAssertScreen() {
        homeScreenTitle.assertExistence()
    }
    
    // MARK: When
}
