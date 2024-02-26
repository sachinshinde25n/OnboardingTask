//
//  HomeScreenUITest.swift
//  OnBoardingUITests
//
//  Created by Sachin Shinde on 20/02/24.
//

import XCTest

final class HomeScreenUITest: XCTestCase {

    var app: XCUIApplication!

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

    // To test  screen Header and Title Exist or not
    func testAppTitle() throws {
        let screenHeader = app.staticTexts["Welcome to the"]
        XCTAssert(screenHeader.exists)

        let screenTitle = app.staticTexts["Employee App"]
        XCTAssert(screenTitle.exists)
    }

    // To test  on Tap of Start button app navigates to OnBoarding screen
    func testStartButton() throws {
        let startBtn = app.buttons["Start OnBoarding"]
        XCTAssert(startBtn.exists)
        XCTAssert(startBtn.isHittable)
        startBtn.tap()
        // navigate

        let onBoardingView = app.collectionViews["OnBoarding_Screen"]
        XCTAssertTrue(onBoardingView.exists, "The screen named Onboarding does not exist.")
        // XCTAssertTrue(onBoardingView.waitForExistence(timeout: 5), "View did not load within 5 seconds")
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
