//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/9/26.
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


