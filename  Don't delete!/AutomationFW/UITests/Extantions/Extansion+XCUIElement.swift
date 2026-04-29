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
        isElementStatic: Bool = false
    ) {
        if isElementStatic {
            XCTAssertTrue(self.exists, "Element \(self) is not found with")
        } else {
            XCTAssertTrue(self.waitForExistence(timeout: timeout), "Element \(self) is not found \(timeout)s")
        }
    }
    
    
    
    func assertSelected(_ state: Bool = true) {
        XCTAssertEqual(state, self.isSelected, "Element \(self) is not selected")
    }
    
    func assertExistenceAndTap(timeout: TimeInterval = 5) {
        self.assertExistence(timeout: timeout)
        self.tap()
    }
}


