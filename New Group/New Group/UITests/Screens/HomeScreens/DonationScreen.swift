//
//  DonationScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class DonationScreen: BaseScreen {
    
    // MARK: Predicates
    let totalAmountPredicate: NSPredicate = .init(format: "label CONTAINS 'Total Amount'")
    
    //MARK: StaticTexts
    lazy var donation: XCUIElement = app.staticTexts["Donation"]

    // MARK: StaticTexts
    lazy var totalAmountTitle: XCUIElement = app.staticTexts.matching(totalAmountPredicate).firstMatch
   
    // MARK: Then
    @discardableResult
    func thenDonationScreenAppears() -> Self {
        totalAmountTitle.assertExistence()
        return self
    }
}
