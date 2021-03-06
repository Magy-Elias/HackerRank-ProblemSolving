//
//  PlusMinus.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func plusMinus(arr: [Int]) {
    let number = arr.count
    var positiveRatio: Double = 0
    var negativeRatio: Double = 0
    var zeroRatio: Double = 0
    
    let numberFormatter = NumberFormatter()
    numberFormatter.maximumFractionDigits = 6
    
    for i in 0..<number {
        if arr[i] > 0 {
            positiveRatio = positiveRatio + 1 / Double(number)
        } else if arr[i] < 0 {
            negativeRatio = negativeRatio + 1 / Double(number)
        } else if arr[i] == 0 {
            zeroRatio = zeroRatio + 1 / Double(number)
        }
    }
    
    print(numberFormatter.string(from: NSNumber(value: positiveRatio)) ?? "")
    print(numberFormatter.string(from: NSNumber(value: negativeRatio)) ?? "")
    print(numberFormatter.string(from: NSNumber(value: zeroRatio)) ?? "")
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
