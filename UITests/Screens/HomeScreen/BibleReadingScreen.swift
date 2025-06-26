//
//  BibleReadingScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/26/25.
//
import XCTest

final class BibleReadingScreen:  BaseScreen {
    
lazy var thenScreenAppears: XCUIElement = app.buttons["Show Verse"]
   lazy var whenITapBackButton: XCUIElement = app.buttons["Back"]
    
    func thenScreenApears() {
        app.buttons["Show Verse"].assertExistence()
    }
    
    func whenITapBackButton() {
        app.buttons["Back"].assertExistenceAndTap()
    }
    }

