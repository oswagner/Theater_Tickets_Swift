//
//  Elderly.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import Foundation

class Elderly: PaymentProtocol {
    
    private let baseFare: Double = 6.00
    
    func pay(day: DaysOfWeek) -> Double {
            switch day {
            case .MONDAY:
                return round(baseFare*0.90 * 100)/100
            case .TUESDAY:
                return round(baseFare*0.85 * 100)/100
            case .WEDNESDAY:
                return round(baseFare*0.60 * 100)/100
            case .THURSDAY:
                return round(baseFare*0.70 * 100)/100
            case .WEEKENDorHOLIDAY:
                return round(baseFare*0.95 * 100)/100
            default:
                return baseFare
        }
    }
}
