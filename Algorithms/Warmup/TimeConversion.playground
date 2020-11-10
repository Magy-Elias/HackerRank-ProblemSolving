//
//  TimeConversion.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 15/10/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let date = dateFormatter.date(from: s)
    
    dateFormatter.dateFormat = "HH:mm:ss"
    if let date = date {
        let date24 = dateFormatter.string(from: date)
        return date24
    }
    return ""
}

print(timeConversion(s: "07:05:45PM"))
