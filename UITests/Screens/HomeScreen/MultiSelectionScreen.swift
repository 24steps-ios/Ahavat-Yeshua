//
//  MultiSelectionScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/13/25.
//

import XCTest

final class MultiSelectionScreen: BaseScreen {
    // MARK: Static Texts
    lazy var multiSelectionTitle: XCUIElement =   app.staticTexts["Select Activities"]
    
    //MARK: Then
    @discardableResult
    func thenScreenAppears() -> Self {
        multiSelectionTitle.assertExistence()
        return self
    }
}
