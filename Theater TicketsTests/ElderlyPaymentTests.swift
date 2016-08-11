//
//  ElderlyPaymentTests.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import XCTest
@testable import Theater_Tickets

class ElderlyPaymentTests: XCTestCase {
    
    var elderly:Elderly!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        elderly = Elderly()
    }
    
    func testElderlyPaymentPercentageForMonday() {
        XCTAssert(elderly.pay(.MONDAY) == 5.40)
    }
    
    func testElderlyPaymentPercentageForTuesday() {
        XCTAssert(elderly.pay(.TUESDAY) == 5.10)
    }
    
    func testElderlyPaymentPercentageForWednesday() {
        XCTAssert(elderly.pay(.WEDNESDAY) == 3.60)
    }
    
    func testElderlyPaymentPercentageForThursday() {
        XCTAssert(elderly.pay(.THURSDAY) == 4.20)
    }
    
    func testElderlyPaymentPercentageForFriday() {
        XCTAssert(elderly.pay(.FRIDAY) == 6.00)
    }
    
    func testElderlyPaymentPercentageForWeekendAndHolidays() {
        XCTAssert(elderly.pay(.WEEKENDorHOLIDAY) == 5.70)
    }

    
}
