//
//  MiniMaxSum.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func miniMaxSum(arr: [Int]) {
    var array = arr
    var minimumSum: Int = 0
    var maximumSum: Int = 0
    var temp: Int
    
    for i in 0..<array.count - 1 {
        for j in i..<array.count {
            if array[i] > array[j] {
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
    
    for i in 0..<(array.count - 1) {
        minimumSum = minimumSum + array[i]
    }
    for i in 1..<array.count {
        maximumSum = maximumSum + array[i]
    }
    print(minimumSum, maximumSum, separator: " ", terminator: " ")
}

miniMaxSum(arr: [5, 2, 4, 1, 3])
