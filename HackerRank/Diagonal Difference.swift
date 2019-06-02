//
//  Diagonal Difference.swift
//  
//
//  Created by RAMDHAN CHOUDHARY on 02/06/19.
//

import Foundation

// Complete the diagonalDifference function below.
func diagonalDifference(arr: [[Int]]) -> Int {
    
    var firstDiagonalSum = 0
    var secondDiagonalSum = 0
    
    for index in 0..<arr.count {
        firstDiagonalSum += arr[index][index]
        secondDiagonalSum += arr[index][arr.count - 1 - index]
    }
    
    return abs(firstDiagonalSum - secondDiagonalSum)
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

let arr: [[Int]] = AnyIterator{ readLine() }.prefix(n).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }
    
    guard arrRow.count == n else { fatalError("Bad input") }
    
    return arrRow
}

guard arr.count == n else { fatalError("Bad input") }

let result = diagonalDifference(arr: arr)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
