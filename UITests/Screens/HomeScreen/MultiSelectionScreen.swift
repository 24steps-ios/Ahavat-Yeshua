//
//  UMulti_selectionScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/3/25.
//
import XCTest

final class MultiSelectionScreen:  BaseScreen {
    lazy var multiSelectionScreenTextTitle: XCUIElement = app.staticTexts["Select Activities"]
    
    // MARK: Then
    @discardableResult
    func thenMultiSelectionScreenAppears() -> Self {
        multiSelectionScreenTextTitle.assertExistence()
        return self
    }
}
