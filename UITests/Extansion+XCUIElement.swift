//
//  Extansion+XCUIElement.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/6/26.
//
import XCTest

extension XCUIElement {
    func assertExistence(timeout: TimeInterval = 10,
                         isElementStatic: Bool = false) {
        if isElementStatic {
            XCTAssertTrue(self.exists, "Element is not found with")
        } else {
            XCTAssertTrue(self.waitForExistence(timeout: timeout), "Element is not found \(timeout)s")
        }
    }
}
