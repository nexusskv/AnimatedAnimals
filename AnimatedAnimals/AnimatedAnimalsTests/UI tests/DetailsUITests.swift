//
//  DetailsUITests.swift
//  AnimatedAnimalsTests
//
//  Created by Rost on 02.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import AnimatedAnimals


class DetailsUITests: XCTestCase {
    var viewController: DetailsViewController!

    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        viewController = nil
        
        super.tearDown()
    }


    /// --->  Function for test exists views after loading  <--- ///
    func testViewsAfterLoading() {
        XCTAssertNil(viewController.animalImage,
                     "Before loading animal image view should be nil.")
        
        XCTAssertNil(viewController.animalTitle,
                     "Before loading animal title label should be nil.")
        
        XCTAssertNil(viewController.totalLikes,
                     "Before loading likes label should be nil.")
        
        XCTAssertNil(viewController.aboutWebView,
                     "Before loading about web view should be nil.")
        
        XCTAssertNil(viewController.activityIndicator,
                     "Before loading activity indicator view should be nil.")
        
        XCTAssertNil(viewController.viewModel,
                     "Before loading view model should be nil.")
               
        let _ = viewController.view

        XCTAssertNotNil(viewController.animalImage,
                        "Animal image view should be set.")
        
        XCTAssertNotNil(viewController.animalTitle,
                        "Animal title label should be set.")
        
        XCTAssertNotNil(viewController.totalLikes,
                        "Total likes label should be set.")
        
        XCTAssertNotNil(viewController.aboutWebView,
                        "About web view should be set.")
        
        XCTAssertNotNil(viewController.activityIndicator,
                        "Activity indicator view should be set.")
        
        XCTAssertNotNil(viewController.viewModel,
                        "View model should be set.")
    }
}
