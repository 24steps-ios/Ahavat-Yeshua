//
//  UITests.swift
//  UITests
//
//  Created by Ilya Sheynblat on 2/19/26.
//

import XCTest

final class UITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws { //b4 every test
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDownWithError() throws {}  // after every test
    
    func testExample() throws {
    }
}
