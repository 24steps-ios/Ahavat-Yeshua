//
//  MultiSelectionScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/26/26.
//
import XCTest

final class MultiSelectionScreen: BaseScreen {
    
    // MARK: Static Texts
    lazy var multiSelectionTitle: XCUIElement = app.staticTexts["Select Activities"]
    lazy var multiSelection: XCUIElement = app.staticTexts["Multi-selection"]
    
    // MARK: Then
    @discardableResult
    func thenMultiSelectionScreenAppears() -> Self {
        multiSelectionTitle.assertExistence()
        return self
    }
}
