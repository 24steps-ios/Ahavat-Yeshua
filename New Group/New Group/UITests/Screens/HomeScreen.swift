//
//  HomeScreen.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 3/9/26.
//
import XCTest

final class HomeScreen: BaseScreen {
    
   // MARK: Buttons
    lazy var bibleReading: XCUIElement = app.buttons["Bible Reading"]
    lazy var backButton: XCUIElement = app.buttons["Back"]
    lazy var profile: XCUIElement = app.buttons["Profile"]
    lazy var donation: XCUIElement = app.buttons["Donation"]
    lazy var multiSelection: XCUIElement = app.buttons["Multi-selection"]
    lazy var holyPlacesMap: XCUIElement = app.buttons["Holy Places Map"]
    lazy var plusCircle: XCUIElement = app.buttons["plus.circle.fill"]
    lazy var liveStream: XCUIElement = app.buttons["Live Stream"]
    
    // MARK: Images
    lazy var bibleReadingIcon: XCUIElement = app.images["book"]
    lazy var profileIcon: XCUIElement = app.images["person.circle"]
    lazy var donationIcon: XCUIElement = app.images["creditcard"]
    lazy var multiSelectionIcon: XCUIElement = app.images["square.stack.3d.down.forward"]
    lazy var holyPlacesMapIcon: XCUIElement = app.images["map"]
    lazy var liveStreamIcon: XCUIElement = app.images["play.circle"]
    
    // MARK: TextFields
    lazy var bibleReadingSearchField: XCUIElement = app.textFields.firstMatch
    
    // MARK: Static Texts
    //lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var donationTitle: XCUIElement = app.staticTexts
        .matching(NSPredicate(format: "label BEGINSWITH 'Total Amount'"))
        .element
    lazy var multiSelectionTitle: XCUIElement = app.staticTexts["Select Activities"]
    
    // MARK: NavigationBars
    lazy var navigationBarTitle: XCUIElement = app.navigationBars["Profile"]
    
    
    func testNavigationHomeScreen() {
        bibleReadingIcon.assertExistence()
        bibleReading.tap()
        
        bibleReadingSearchField.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        profileIcon.assertExistence()
        profile.tap()
        navigationBarTitle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        donationIcon.assertExistence()
        donation.tap()
        donationTitle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        liveStreamIcon.assertExistence()
        liveStream.tap()
        backButton.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        multiSelectionIcon.assertExistence()
        multiSelection.tap()
        multiSelectionTitle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
        
        holyPlacesMapIcon.assertExistence()
        holyPlacesMap.tap()
        plusCircle.assertExistence()
        backButton.tap()
        homeScreenTitle.assertExistence()
    }
   
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts[" Growth in Faith"]
    
    // MARK: Then
     func thenIAssertScreen() {
         homeScreenTitle.assertExistence()
         
    }
    // MARK: When
    
    }
    

