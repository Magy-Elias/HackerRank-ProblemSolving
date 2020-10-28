//
//  SimpleArraySum.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func simpleArraySum(ar: [Int]) -> Int {
    var x: Int = 0
    
    ar.forEach { number in
        x = x + number
    }
    
    return x
}

simpleArraySum(ar: [1, 2, 3, 4, 10, 11])
