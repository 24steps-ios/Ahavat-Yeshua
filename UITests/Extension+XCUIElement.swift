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
            XCTAssertTrue(self.exists, "Element is not found with") //self=any XCUIElement, we check exist or waitForExistance
        } else {
            XCTAssertTrue(self.waitForExistence(timeout: timeout), "Element is not found with \(timeout)s")
        }
    }
    func assertSelected(state: Bool = true){
        XCTAssertEqual(state, self.isSelected, "Element is not selected")
    }
    func assertExistenceAndTap(timeout: TimeInterval = 5) {
        self.assertExistence(timeout: timeout)
        self.tap()
        
    }
}
// List of Elemens
extension XCUIElementQuery {
    func assertEqual(expectation: Int) {
        XCTAssertEqual(self.count, expectation)
    }
    
}
    

