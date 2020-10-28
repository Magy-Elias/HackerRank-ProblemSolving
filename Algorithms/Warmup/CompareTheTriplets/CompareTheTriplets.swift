//
//  CompareTheTriplets.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var x: [Int] = [0, 0]
    
    for i in 0..<a.count {
        if a[i] > b[i] {
            x[0] = x[0] + 1
        } else if a[i] < b[i] {
            x[1] = x[1] + 1
        }
    }
    
    return x
}

compareTriplets(a: [17, 28, 30], b: [99, 16, 8])
