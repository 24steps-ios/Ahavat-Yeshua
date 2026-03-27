//
//  DonationScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class DonationScreen: BaseScreen {
    
    // MARK: Buttons
    lazy var donation: XCUIElement = app.buttons["Donation"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    
    // MARK: Predicates
    lazy var donationTitle: XCUIElement = app.staticTexts
        .matching(NSPredicate(format: "label BEGINSWITH 'Total Amount'"))
        .element
    
   
    
    // MARK: Then
    func thenDonationScreenAppears() {
        donationTitle.assertExistence()
    }
    
    // MARK: When
    func  whenITapBackButton() {
        backButton.assertExistenceAndTap()
    }
}
