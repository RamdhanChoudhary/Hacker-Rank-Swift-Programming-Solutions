//
//  Staircase.swift
//  
//
//  Created by RAMDHAN CHOUDHARY on 02/06/19.
//

import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> Void {
    var stairs = String()
    // iterate over range of 1 and n
    for step in (1...n).reversed() {
        // repeat \s and # accordingly
        stairs += String(repeating: " ", count: step - 1) + String(repeating: "#", count: n + 1 - step) + "\n"
    }
    
    print(stairs )
    
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

staircase(n: n)
