//
//  Student.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import Foundation


class Student: PaymentProtocol {
    
    private let baseFare: Double = 8.00
    
    private var hasStutendPass = false
    
    init(pass:Bool){
        hasStutendPass = pass
    }
    
    func pay(day: DaysOfWeek) -> Double {
        if hasStutendPass && day != .WEEKENDorHOLIDAY {
            return round(baseFare*0.65 * 100)/100
        }
        switch day {
        case .MONDAY:
            return round(baseFare*0.90 * 100)/100
        case .TUESDAY:
            return round(baseFare*0.95 * 100)/100
        case .WEDNESDAY:
            return round(baseFare*0.50 * 100)/100
        case .THURSDAY:
            return round(baseFare*0.70 * 100)/100
        default:
            return baseFare
        }
    }
}