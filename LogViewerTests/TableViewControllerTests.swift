//
//  TableViewControllerTests.swift
//  LogViewer
//
//  Created by Henrik Top Mygind on 23/12/2016.
//  Copyright © 2016 Widex A/S. All rights reserved.
//

import XCTest
@testable import LogViewer

class TestableTableView : UITableView{
    override func indexPath(for cell: UITableViewCell) -> IndexPath? {
        return IndexPath(row: 4, section: 0)
    }
}

class TableViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // ARRANGE
        let sut = TableViewController()
        
        sut.items = [0, 1, 2, 2, 1, 0]
        
        let tableView = TestableTableView()
        sut.tableView = tableView
        
        let source = sut
        let destination = UITableViewController()
        
        let segue = UIStoryboardSegue(identifier: "test", source: source, destination: destination)
        
        let cell = UITableViewCell()
        
        // ASSERT
        sut.prepare(for: segue, sender: cell)

        XCTAssert(destination.view.backgroundColor == .yellow)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
