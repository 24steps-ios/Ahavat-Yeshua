//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/18/25.
//
import XCTest

// TODO: Refactor
final class HomeScreen: BaseScreen {
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]

   // MARK: THEN
    func thenIAssertScreen(){
        homeScreenTitle.assertExistence()
    }
    // MARK: WHEN
    
}
