//
//  DonationScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/12/25.
//

import XCTest

final class DonationScreen: BaseScreen {
    
    // MARK: Predicates
    let totalAmountPredicate: NSPredicate = .init(format: "label CONTAINS 'Total Amount'")
    
    // MARK: Buttons
 
    
    // MARK:  Static Texts
    lazy var totalAmountLabel: XCUIElement = app.staticTexts.matching(totalAmountPredicate).firstMatch
    
    // MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        totalAmountLabel.assertExistence()
        return self
   }
}
