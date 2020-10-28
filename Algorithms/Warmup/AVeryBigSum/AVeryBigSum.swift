//
//  AVeryBigSum.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
    var sum: Int = 0
    
    for i in 0..<ar.count {
        sum = sum + ar[i]
    }
    
    return sum
}

aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])
