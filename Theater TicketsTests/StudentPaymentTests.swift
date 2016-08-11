//
//  StudentPaymentTests.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import XCTest

@testable import Theater_Tickets

class StudentPaymentTests: XCTestCase {
    
    var studentWithPass:Student!
    var student:Student!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        studentWithPass = Student(pass: true)
        student = Student(pass: false)
    }
    
    func testStudentPaymentPercentageForMonday() {
        XCTAssert(student.pay(.MONDAY) == 7.20)
    }
    
    func testStudentPaymentPercentageForTuesday() {
        XCTAssert(student.pay(.TUESDAY) == 7.60)
    }
    
    func testStudentPaymentPercentageForWednesday() {
        XCTAssert(student.pay(.WEDNESDAY) == 4.00)
    }
    
    func testStudentPaymentPercentageForThursday() {
        XCTAssert(student.pay(.THURSDAY) == 5.60)
    }
    
    func testStudentPaymentPercentageForFriday() {
        XCTAssert(student.pay(.FRIDAY) == 8.00)
    }
    
    func testStudentPaymentPercentageForWeekendAndHolidays() {
        XCTAssert(student.pay(.WEEKENDorHOLIDAY) == 8.00)
    }
    
    func testStudentWithPassPaymentPercentageForMonday() {
        XCTAssert(studentWithPass.pay(.MONDAY) == 5.20)
    }
    
    func testStudentWithPassPaymentPercentageForTuesday() {
        XCTAssert(studentWithPass.pay(.TUESDAY) == 5.20)
    }
    
    func testStudentWithPassPaymentPercentageForWednesday() {
        XCTAssert(studentWithPass.pay(.WEDNESDAY) == 5.20)
    }
    
    func testStudentWithPassPaymentPercentageForThursday() {
        XCTAssert(studentWithPass.pay(.THURSDAY) == 5.20)
    }
    
    func testStudentWithPassPaymentPercentageForFriday() {
        XCTAssert(studentWithPass.pay(.FRIDAY) == 5.20)
    }
    
    func testStudentWithPassPaymentPercentageForWeekendAndHolidays() {
        XCTAssert(studentWithPass.pay(.WEEKENDorHOLIDAY) == 8.00)
    }
}
