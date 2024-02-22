//
//  OnBoardingUITests.swift
//  OnBoardingUITests
//
//  Created by Sachin Shinde on 15/02/24.
//

import XCTest

final class OnBoardingUITests: XCTestCase {
    
    var app : XCUIApplication!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func navigateToOnboardingScreen() {
        let startBtn = app.buttons["Start OnBoarding"]
        startBtn.tap()
    }

    // To Test - on tap of Next button 3 times app navigates to Dashboard screen
    func testNextButton() throws {
        
        navigateToOnboardingScreen()
        
        let nextBtn = app.buttons["Next"]
        XCTAssert(nextBtn.exists)
        XCTAssert(nextBtn.isHittable)
        nextBtn.tap()
        nextBtn.tap()
        nextBtn.tap()
        
        let dashboardView = app.staticTexts["Dashboard_Screen"]
        XCTAssertTrue(dashboardView.waitForExistence(timeout: 5), "View did not load within 5 seconds")
    }
    
    
    // To Test - on tap of SKip button app navigates to Dashboard screen
    func testSkipButton() throws {
        
        navigateToOnboardingScreen()

        let skipBtn = app.buttons["Skip"]
        XCTAssert(skipBtn.exists)
        XCTAssert(skipBtn.isHittable)
        
        skipBtn.tap()
        
        let dashboardView = app.staticTexts["Dashboard_Screen"]
        XCTAssertTrue(dashboardView.waitForExistence(timeout: 5), "View did not load within 5 seconds")
    }
    
    // To test swipe gesture is present or not
    func testSwipeGesture() throws {
        
        navigateToOnboardingScreen()
        app.swipeLeft()
        app.swipeRight()
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
