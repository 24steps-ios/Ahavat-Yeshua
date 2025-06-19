//
//  ExpioreScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/18/25.
//

import XCTest

final class ExploreScreen: BaseScreen {
     lazy var exploreScreenQuizCell: XCUIElement = app.buttons["📖 Faith-Based Quiz"]
    
    // MARK: THEN
    func thenIAssertScreen(){
        exploreScreenQuizCell.assertExistence()
    }
  
}

