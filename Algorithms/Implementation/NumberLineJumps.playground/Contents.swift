//
//  NumberLineJumps.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 12/11/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var k1 = x1
    var k2 = x2
    
    if (x2 > x1) && (v2 > v1) {
        return "NO"
    } else if (x1+v1) == (x2+v2) {
        return "YES"
    } else {
        for _ in 0...10000 {
            k1 += v1
            k2 += v2
            if k1 == k2 {
                return "YES"
            }
        }
        
        return "NO"
    }
}

print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2))
print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3))
print(kangaroo(x1: 21, v1: 6, x2: 47, v2: 3))
print(kangaroo(x1: 42, v1: 3, x2: 94, v2: 2))
