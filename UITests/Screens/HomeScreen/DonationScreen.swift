//
//  DonationScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/2/25.
//
import XCTest


final class DonationScreen:  BaseScreen {
    
    // MARK: Buttons
    lazy var backButton: XCUIElement = app.buttons["Back"]
    lazy var totalAmountTitle: XCUIElement =  app.staticTexts.matching(totalAmountPredicate).firstMatch
    
    // MARK: Then
    func thenScreenAppears() {
        totalAmountTitle.assertExistence()
       }
    
    // MARK: When
    func whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
