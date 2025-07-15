//
//  Extension+XCUIElementQuery.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/14/25.
//

import XCTest

// List of Elements
extension XCUIElementQuery {
    func assertEqual(_ expectation: Int) {
        XCTAssertEqual(self.count, expectation)
    }
}
