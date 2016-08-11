//
//  PaymentProtocol.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import Foundation

protocol PaymentProtocol {
    func pay(day: DaysOfWeek) -> Double
}