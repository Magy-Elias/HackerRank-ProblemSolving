//
//  StairCase.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 27/01/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func staircase(n: Int) {
    for i in 1...n {
        for c in (i..<n).reversed() {
            print(" ", terminator: "")
        }
        for j in 0..<i {
            print("#", terminator: "")
        }
        print("")
    }
}

staircase(n: 4)
