//
//  Extension+XCUIElement.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/2/25.
//
import XCTest

// Single Element
extension XCUIElement {
    func assertExistence(timeout: TimeInterval = 10, isElementStatic: Bool = false) {
        if isElementStatic {
            XCTAssertTrue(self.exists, "Element is not found with")
        } else {
            XCTAssertTrue(self.waitForExistence(timeout: timeout), "Element is not found with \(timeout)s")
        }
    }
    
    func assertSelected(_ state: Bool = true) {
        XCTAssertEqual(state, self.isSelected, "Element is not selected")
    }
}

// List of Elements
extension XCUIElementQuery {
    func assertEqual(_ expectation: Int) {
        XCTAssertEqual(self.count, expectation)
    }
}

