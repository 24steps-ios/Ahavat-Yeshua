//
//  UITests.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/16/25.
//
//import XCTest
//
//class CoreUITests: XCTestCase {
//    
//    func testMainTabs() {
//        homeScreen.thenIAssertScreen()
//
//        navigationTabBar.whenINavigate(to: .bibleStudyTab)
//        bibleStudyScreen.thenIAssertScreen()
//
//        navigationTabBar.whenINavigate(to: .feedTab)
//        feedScreen.thenIAssertScreen()
//        
//        navigationTabBar.whenINavigate(to: .exploreTab)
//        exploreScreen.thenIAssertScreen()
//
//        navigationTabBar.whenINavigate(to: .homeTab)
//        homeScreen.thenIAssertScreen()
//    }
//    
//    func testNavigationBar() {
//        navigationTabBar
//            .thenHomeTabAppears()
//            .thenHomeTabSelected()
//            .thenAllTabsAppear()
//        
//            .whenINavigate(to: .bibleStudyTab)
//            .thenBibleStudyTabSelected()
//            .thenAllTabsAppear()
//
//            .whenINavigate(to: .feedTab)
//            .thenFeedTabAppears()
//            .thenAllTabsAppear()
//        
//            .whenINavigate(to: .exploreTab)
//            .thenExploreTabAppears()
//            .thenAllTabsAppear()
//        
//            .whenINavigate(to: .homeTab)
//            .thenHomeTabSelected()
//            .thenAllTabsAppear()
//    }
//}
