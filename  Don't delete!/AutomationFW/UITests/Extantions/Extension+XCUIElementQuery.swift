//
//  extension+XCUIElementQuery.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/6/26.
//
import XCTest

// List of Elements
extension XCUIElementQuery {
    func assertEqual(_ expectation: Int) {
        XCTAssertEqual(self.count, expectation)
    }
}
