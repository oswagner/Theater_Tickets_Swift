//
//  Theater_TicketsTests.swift
//  Theater TicketsTests
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import XCTest
@testable import Theater_Tickets

class ChildrenPaymentTests: XCTestCase {
    
    var children:Children!
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        children = Children()
    }
    
    func testChildrenPaymentPercentageForMonday() {
        XCTAssert(children.pay(.MONDAY) == 4.95)
    }
    
    func testChildrenPaymentPercentageForTuesday() {
        XCTAssert(children.pay(.TUESDAY) == 4.68)
    }
    
    func testChildrenPaymentPercentageForWednesday() {
        XCTAssert(children.pay(.WEDNESDAY) == 3.85)
    }
    
    func testChildrenPaymentPercentageForThursday() {
        XCTAssert(children.pay(.THURSDAY) == 5.50)
    }
    
    func testChildrenPaymentPercentageForFriday() {
        XCTAssert(children.pay(.FRIDAY) == 4.90)
    }
    
    func testChildrenPaymentPercentageForWeekendAndHolidays() {
        XCTAssert(children.pay(.WEEKENDorHOLIDAY) == 5.50)
    }
    
}
