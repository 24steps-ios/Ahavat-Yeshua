//
//  BibleReadingScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/23/25.
//

import XCTest

final class BibleReadingScreen: BaseScreen {
    //    lazy var smt: XCUIElement = app.buttons["Show Verse"]
    // HOMEWORK: Store elements on the top of the class
    func thenScreenAppears() {
        app.buttons["Show Verse"].assertExistence()
    }
    
     func whenITapBackButton() {
         app.buttons["Back"].assertExistenceAndTap()
    }
}
