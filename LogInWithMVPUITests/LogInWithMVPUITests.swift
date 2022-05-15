//
//  LogInWithMVPUITests.swift
//  LogInWithMVPUITests
//
//  Created by Artem Pavlov on 14.05.2022.
//

import XCTest

class LogInWithMVPUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()
        app.launch()
        
        app.textFields["enter your name"].tap()
        app.textFields["enter your name"].typeText("Foo")
        
        app.textFields["enter your second name"].tap()
        app.textFields["enter your second name"].typeText("Bar")
        
        app.buttons["LOGIN"].tap()
        
        XCTAssertTrue(app.staticTexts["Hello, Foo Bar!"].exists)
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
