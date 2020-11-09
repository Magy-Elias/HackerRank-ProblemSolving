//
//  PlayWithWords.swift
//  HackerRank-ProblemSolving
//
//  Created by Magy Elias on 09/11/20.
//  Copyright © 2020 Magy Elias. All rights reserved.
//

import UIKit
import Foundation

func playWithWords(s: String) -> Int {
    let stringArray = Array(s)
    var subStringsArray = [[stringArray.count]]
    var productScore = 0
    
    subStringsArray = Array(repeating: Array(repeating: 0, count: stringArray.count), count: stringArray.count)
    
    for i in 0..<stringArray.count {
        subStringsArray[i][i] = 1
    }
    
    for len in 2...stringArray.count {
        for i in 0..<stringArray.count-len+1 {
            let j = i + len - 1
            
            if(len == 2 && stringArray[i] == stringArray[j]){
                subStringsArray[i][j] = 2
            }else if(stringArray[i] == stringArray[j]){
                subStringsArray[i][j] = subStringsArray[i + 1][j-1] + 2
            }else{
                subStringsArray[i][j] = max(subStringsArray[i + 1][j], subStringsArray[i][j - 1])
            }
        }
    }
    
    for i in (0..<subStringsArray.count-2).reversed() {
        for j in (i+1...subStringsArray.count-1).reversed() {
            if subStringsArray[0][i] * subStringsArray[j][subStringsArray.count-1] > productScore {
                productScore = subStringsArray[0][i] * subStringsArray[j][subStringsArray.count-1]
            }
        }
    }
    
    return productScore
}

let input = "aacdcbdccdccbacadcdcbbbdbcaacabddbcaddbccdcaccadbadcdcdcbaabcadbdcabdbcccbddcdabcaadcdadcacbdbccccbcacccdbacbddbacbccdadddbccdbddcabbbcccdddadddccdbddabbddcaadacaacdddbcbbccdadadbdbbcaaabccabdaaddadaa"  //"dbcbcbededadecbcdecbaeadcecada"//"eeegeeksforskeeggeeks"//"geeksforgeeks"//"agbdba"
playWithWords(s: input)
