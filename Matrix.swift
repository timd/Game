//
//  Matrix.swift
//  Game
//
//  Created by Tim on 31/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import Foundation

class Matrix {

    func dumpMatrix(theMatrix: [[Any?]]) {
        
        for rowIndex in 0...(theMatrix.count - 1) {
            let row = theMatrix[rowIndex]
            print(row)
        }
        
    }

    func rotate(matrix: [[Any?]], byDegrees: Int) -> [[Any?]]? {
        
        if (byDegrees / 90) != 0 {
            return nil
        }
        
        return nil
        
    }

    func rotateBy90(originalMatrix: [[Any?]]) -> [[Any?]]{
        
        let numberOfRows = originalMatrix.count
        let numberOfCols = originalMatrix[0].count
        
        // Create new matrix
        let newRow: Array<Any?> = Array(repeating: nil, count: numberOfRows)
        var newMatrix: Array<Array<Any?>> = Array(repeating: newRow, count: numberOfCols)
        
        // Create row of numberOfRows elements - will iterate 2 times
        for outerLoop in 0...(numberOfRows - 1) {
            
            // Grab the last row of the current matrix
            let grabbedRow = originalMatrix[(numberOfRows-1)-outerLoop]
            
            for innerLoop in 0...(numberOfCols - 1) {
                // inner loop will iterate 4 times
                
                // Walk across each element
                let grabbedElement = grabbedRow[innerLoop]
                
                let X = innerLoop
                var newRow = newMatrix[X]
                
                // Insert at new Y
                let Y = outerLoop
                newRow[Y] = grabbedElement
                newMatrix[X] = newRow
                
            }
            
        }
        
        return newMatrix
        
    }

}
