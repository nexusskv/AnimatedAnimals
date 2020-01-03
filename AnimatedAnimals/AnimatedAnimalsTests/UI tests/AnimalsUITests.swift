//
//  AnimalsUITests.swift
//  AnimalsUITests
//
//  Created by Rost on 22.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import XCTest
@testable import AnimatedAnimals


class AnimalsUITests: XCTestCase {
    var viewController: AnimalsViewController!
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        let storyboard = UIStoryboard(name: "Animals", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "AnimalsViewController") as? AnimalsViewController
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        viewController = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists views after loading  <--- ///
    func testViewsAfterLoading() {
        XCTAssertNil(viewController.dataTable,
                     "Before loading data table view should be nil.")
        
        XCTAssertNil(viewController.likeDetailsView,
                     "Before loading like details view should be nil.")
        
        let _ = viewController.view

        XCTAssertNotNil(viewController.dataTable,
                        "Data table view should be set.")
        
        XCTAssertNotNil(viewController.likeDetailsView,
                        "Like details view should be set.")
    }
    
    
    /// --->  Function for check conform table view to datasource protocol  <--- ///
    func testConformsToTableViewDataSource () {
        XCTAssert(viewController.conforms(to: UITableViewDataSource.self),
                  "Table view not conform UITableViewDataSource.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:cellForRowAt:))),
                      "Table view not respond to cellForRowAt: selector.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:numberOfRowsInSection:))),
                      "Table view not respond to numberOfRowsInSection: selector.")
    }
    
    
    /// --->  Function for check conform table view to delegate protocol  <--- ///
    func testConformsToTableViewDelegate() {
        XCTAssert(viewController.conforms(to: UITableViewDelegate.self),
                  "Table view not conform UITableViewDelegate.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:heightForRowAt:))),
                      "Table view not respond to heightForRowAt: selector.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:viewForHeaderInSection:))),
                      "Table view not respond to viewForHeaderInSection: selector.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:viewForFooterInSection:))),
                      "Table view not respond to viewForFooterInSection: selector.")
    }

    
    /// --->  Function for check conform scroll view to delegate protocol  <--- ///
    func testConformsToScrollViewDelegate() {
        XCTAssert(viewController.conforms(to: UIScrollViewDelegate.self),
        "Scroll view not conform UIScrollViewDelegate.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.scrollViewDidEndDecelerating)),
        "Scroll view not respond to scrollViewDidEndDecelerating selector.")

        XCTAssertTrue(viewController.responds(to: #selector(viewController.scrollViewDidEndDragging)),
        "Scroll view not respond to scrollViewDidEndDragging selector.")
    }
}
