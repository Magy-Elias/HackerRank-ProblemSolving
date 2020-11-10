//
//  AppleAndOrange.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 10/11/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) {
    if a < s && s < t && t < b {
        var numberOfApplesInside = 0
        var numberOfOrangesInside = 0
        
        apples.forEach { apple in
            if s <= apple + a && apple + a <= t {
                numberOfApplesInside += 1
            }
        }
        
        oranges.forEach { orange in
            if s <= orange + b && orange + b <= t {
                numberOfOrangesInside += 1
            }
        }
        
        print(numberOfApplesInside)
        print(numberOfOrangesInside)
    }
}

let s = 7
let t = 11

let a = 5   ///  location of the Apple tree.
let apples = [-2,2,1]   /// distances at which each apple falls from the tree.

let b = 15  ///  location of the Orange tree.
let oranges = [5,-6]   /// distances at which each orange falls from the tree.

countApplesAndOranges(s: s, t: t, a: a, b: b, apples: apples, oranges: oranges)
