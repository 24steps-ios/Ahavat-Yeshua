//
//  Extansion+XCUIElement.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/6/26.
//
import XCTest

// Single Element
extension XCUIElement {
    func assertExistence(
        timeout: TimeInterval = 10,
        isElementStatic: Bool = false   //all element dinamic
    ) {
        if isElementStatic {
            XCTAssertTrue(self.exists, "Element is not found with")
        } else {
            XCTAssertTrue(self.waitForExistence(timeout: timeout), "Element is not found \(timeout)s")
        }
    }
    
    func assertSelected(_ state: Bool = true) {
        XCTAssertEqual(state, self.isSelected, "Element is not selected")
    }
    func assertExistenceAndTap(timeout: TimeInterval = 5) {
        self.assertExistence(timeout: timeout)
        self.tap()
    }
}


// List of Element: ( 4 element this is list of 4 elements)
extension XCUIElementQuery {
    func assertEqual(_ expectation: Int) {
        XCTAssertEqual(self.count, expectation, "Count of elements is not equal 4")
    }
}
