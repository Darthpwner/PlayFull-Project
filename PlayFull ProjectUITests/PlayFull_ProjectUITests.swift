
//
//  PlayFull_ProjectUITests.swift
//  PlayFull ProjectUITests
//
//  Created by Matthew Allen Lin on 6/10/16.
//  Copyright © 2016 Matthew Allen Lin Software. All rights reserved.
//

import XCTest

class PlayFull_ProjectUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test1() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        app.textFields["Resources + Item"].tap()
        app.textFields["Resources + Item"].typeText("posts")
        app.buttons["GET"].tap()
    }
    
    func test2() {
        let app = XCUIApplication()
        app.textFields["Resources + Item"].tap()
        app.textFields["Resources + Item"].typeText("posts/1")
        app.buttons["GET"].tap()
    }
    
    func test3() {
        let app = XCUIApplication()
        app.textFields["Resources + Item"].tap()
        app.textFields["Resources + Item"].typeText("posts/1/comments")
        app.buttons["GET"].tap()
    }
    
    func test4() {
        
        let app = XCUIApplication()
        app.textFields["Resources + Item"].tap()
        app.textFields["Resources + Item"].typeText("comments")
        
        let parameterTextField = app.textFields["Parameter"]
        parameterTextField.tap()
        app.textFields["Parameter"].typeText("postId")
        
        let parameterValueTextField = app.textFields["Parameter Value"]
        parameterValueTextField.tap()
        app.textFields["Parameter Value"].typeText("1")
        app.buttons["GET"].tap()
        
    }
    
    func test5() {
        
    }
}
