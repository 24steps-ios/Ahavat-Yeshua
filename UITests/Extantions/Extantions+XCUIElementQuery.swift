//
//  Extantions+XCUIElementQuery.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/16/25.
//
import XCTest

// List of Elements
extension XCUIElementQuery {
    func assertEqual(_ expectation: Int) {
        XCTAssertEqual(self.count, expectation)
    }
}

