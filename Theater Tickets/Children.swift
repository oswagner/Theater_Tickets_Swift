//
//  Children.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import Foundation

class Children: PaymentProtocol {
    
    private let baseFare: Double = 5.50
    
    func pay(day: DaysOfWeek) -> Double {
        switch day {
        case .MONDAY:
            return round(baseFare*0.9 * 100)/100
        case .TUESDAY:
            return round(baseFare*0.85 * 100)/100
        case .WEDNESDAY:
            return round(baseFare*0.7 * 100)/100
        case .FRIDAY:
            return round(baseFare*0.89 * 100)/100
        default:
            return baseFare
        }
    }
}