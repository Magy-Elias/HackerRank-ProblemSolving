//
//  BirthdayCakeCandles.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 15/10/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    var tallest: Int = 0
    for (index, value) in candles.enumerated() {
        if index < candles.count-1 {
            if candles[index] > tallest {
                tallest = value
            }
        }
    }
    print(tallest)
    let y = candles.filter({ $0 == tallest })
    
    return y.count
}

let result1 = birthdayCakeCandles(candles: [18,90,90,13,90,75,90, 8,90,43])
print(result1)
let result2 = birthdayCakeCandles(candles: [3,2,1,3])
print(result2)
let result3 = birthdayCakeCandles(candles: [82,49,82,82,41,82,15,63,38,25])
print(result3)

