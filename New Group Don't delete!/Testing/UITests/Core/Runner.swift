//
//  Runner.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/6/26.
//

import XCTest

// from main bibliotheca XCTest
class Runner: XCTestCase {
    let app: XCUIApplication = .init()
    var flags: [String] = .init()
    
    open func setPreconditions() {}
    
    //b4 every test
    override func setUpWithError() throws {
        continueAfterFailure = false
        setPreconditions()
        app.launchArguments = flags
        app.launch()
    }
    
    // after every test
    override func tearDownWithError() throws {}
}
