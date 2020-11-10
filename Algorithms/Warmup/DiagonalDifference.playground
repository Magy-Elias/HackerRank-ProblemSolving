//
//  DiagonalDifference.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    //calulate topLeft to bottomRight
    var topLeftBottomRight = 0
    var topRightBottomLeft = 0

    for i in 0..<arr.count {
        topLeftBottomRight += arr[i][i]
        topRightBottomLeft += arr[i][arr.count-1-i]
    }
    
    return abs(topRightBottomLeft - topLeftBottomRight)
}

diagonalDifference(arr: [[11,2,4], [4,5,6], [10,8,-12]])
