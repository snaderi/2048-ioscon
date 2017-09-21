//
//  m2048UITests.swift
//  m2048UITests
//
//  Created by Chris Stott on 2017-03-30.
//  Copyright © 2017 Danqing. All rights reserved.
//

import XCTest

class m2048UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        BuddyBuildSDK.startUITestsVideoRecording()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        BuddyBuildSDK.stopUITestsVideoRecording()
        
        super.tearDown()
    }
    
    func testSwipe() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let element = app.otherElements.containing(.staticText, identifier:"2048").element
        element.swipeUp()
        element.swipeDown()
        element.swipeLeft()
        element.swipeRight()
        element.swipeUp()
        element.swipeDown()
        element.swipeLeft()
        element.swipeRight()
        element.swipeUp()
        element.swipeDown()
        element.swipeLeft()
        element.swipeRight()
        
    }
    
    func testSwipeThenCrash() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let element = app.otherElements.containing(.staticText, identifier:"2048").element
        element.swipeUp()
        element.swipeDown()
        element.swipeLeft()
        element.swipeRight()
        
        XCUIApplication().buttons["Settings"].tap()
        XCUIDevice.shared().orientation = .faceUp
        
    }
    
}
