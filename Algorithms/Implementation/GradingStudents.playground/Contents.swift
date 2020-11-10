//
//  GradingStudents.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 10/11/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    var roundedGrades = grades
    
    for i in 0..<grades.count where !(grades.count > 60) && grades[i] != 100 {
        print("\(i) item")
        for j in grades[i]+1...100 {
            if j % 5 == 0 {
                if j >= 40 {
                    if j - grades[i] < 3 {
                        print("\(grades[i]) round to \(j) (\(j) - \(grades[i]) is less than 3)")
                        roundedGrades[i] = j
                    } else {
                        print("\(grades[i]) do not round (\(j) - \(grades[i]) is 3 or higher)")
                    }
                } else {
                    print("\(grades[i]) do not round (result is less than 40)")
                }
                break
            }
        }
    }
    
    return roundedGrades
}

let grades = [44,84,94,21,0,18,100,18,62,30,61,53,0,43,2,29,53,61,40,14,4,29,98,37,23,46,9,79,62,20,38,51,99,59,47,4,86,61,68,17,45,6,1,95,95]//[4,73,67,38,33]
print(gradingStudents(grades: grades))
