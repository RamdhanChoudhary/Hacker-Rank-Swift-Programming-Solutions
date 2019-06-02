//
//  Plus Minus.swift
//  
//
//  Created by RAMDHAN CHOUDHARY on 02/06/19.
//

import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    // Initialize counters
    var positiveCount = 0.0
    var negitiveCount = 0.0
    var zeroCount = 0.0
    
    // Score integers
    for int in arr {
        if int > 0 {
            positiveCount += 1.0
        } else if int < 0 {
            negitiveCount += 1.0
        } else {
            zeroCount += 1.0
        }
    }
    
    var total =  positiveCount + negitiveCount + zeroCount
    
    // Get fractions
    var percentPositive = positiveCount / total
    var percentNegitive = negitiveCount / total
    var percentZero = zeroCount / total
    
    // Output fractions
    print("\(percentPositive)\n\(percentNegitive)\n\(percentZero)")
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
