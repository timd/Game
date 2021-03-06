//
//  ViewController.swift
//  Game
//
//  Created by Tim on 29/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let row0 = ["A", "B", "C", "D"]
        let row1 = ["E", "F", "G", "H"]
        let row2 = ["I", "J", "K", "L"]
        let row3 = ["M", "N", "O", "P"]
        
        let matrixA = [row0,
                       row1,
                       row2,
                       row3]

        dumpMatrix(theMatrix: matrixA)

        let newMatrix = rotateBy90(originalMatrix: matrixA)
        
        dumpMatrix(theMatrix: newMatrix)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dumpMatrix(theMatrix: [[Any?]]) {

        for rowIndex in 0...(theMatrix.count - 1) {
            let row = theMatrix[rowIndex]
            print(row)
        }

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

