//
//  Piece.swift
//  Game
//
//  Created by Tim on 29/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import Foundation
import UIKit



struct Piece {
    
    let id: Int
    var type: Int
    
    var rows: Array<Array<UIColor?>>
    
    init(withType: Int, andId: Int) {
        
        self.type = withType
        self.id = andId
        
        // Create row arrays
        rows = Array<Array<UIColor?>>()

        for _ in 1...4 {
            let rowArray = Array<UIColor?>(repeating: nil, count: 4)
            rows.append(rowArray)
        }
        
        populatePiece(type: withType)
        
    }
    
    func getCell(row: Int, col: Int) -> UIColor? {
        let row = rows[row]
        return row[col]
    }
    
    func reducePiece() -> [[Bool]] {
        
        var returnArray = [[Bool]]()
        
        for _ in 0...3 {
            let row = [false, false, false, false]
            returnArray.append(row)
        }
        
        for rowIndex in 0...(self.rows.count - 1) {
            
            let sourceRow = self.rows[rowIndex]
            var returnRow = returnArray[rowIndex]
            
            for colIndex in 0...(sourceRow.count - 1) {
                
                if (sourceRow[colIndex] != nil) {
                    returnRow[colIndex] = true
                } else {
                    returnRow[colIndex] = false
                }
                
            }
            
            returnArray[rowIndex] = returnRow
            
        }
        
        return returnArray
        
    }
    
    func rotate(by: Int) {
    }
    
    mutating func populatePiece(type: Int) {
        
        switch type {
        
        case Constants.EmptyPiece:
            // No action
            return
            
        case Constants.TwoByTwo:
            // 2x2
            let rowOne = [Constants.LightGreenColor, Constants.LightGreenColor, nil, nil]
            rows[0] = rowOne
            rows[1] = rowOne
            return
            
        case Constants.OneByFour:
            // 1x4
            let rowOne = [Constants.PurpleColor, nil, nil, nil]
            rows[0] = rowOne
            rows[1] = rowOne
            rows[2] = rowOne
            rows[3] = rowOne
            return
            
        case Constants.FourByOne:
            // 4 x 1
            let rowOne = [Constants.PurpleColor, Constants.PurpleColor, Constants.PurpleColor, Constants.PurpleColor]
            rows[0] = rowOne
            return
            
        case Constants.TwoByFourEll:
            let rowOne = [Constants.DarkBlueColor, nil, nil, nil]
            let rowTwo = [Constants.DarkBlueColor, Constants.DarkBlueColor, nil, nil]
            rows[0] = rowOne
            rows[1] = rowOne
            rows[2] = rowOne
            rows[3] = rowTwo
            return
            
        case Constants.TwoByTwoEll:
            let row0 = [Constants.WhiteColor, nil, nil, nil]
            let row1 = [Constants.WhiteColor, Constants.WhiteColor, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row2
            rows[3] = row2
            return

        case Constants.OneByThreeEll:
            let row0 = [Constants.OrangeColor, nil, nil, nil]
            let row1 = [Constants.OrangeColor, Constants.OrangeColor, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row0
            rows[2] = row1
            rows[3] = row2
            return

        case Constants.ThreeByThreeEll:
            let row0 = [Constants.LightBlueColor, nil, nil, nil]
            let row1 = [Constants.LightBlueColor, Constants.LightBlueColor, Constants.LightBlueColor, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row0
            rows[2] = row1
            rows[3] = row2
            return

        case Constants.TwoByThreeCee:
            let row0 = [Constants.YellowColor, Constants.YellowColor, nil, nil]
            let row1 = [Constants.YellowColor, nil, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row0
            rows[3] = row2
            return

        case Constants.TwoByThreeBee:
            let row0 = [Constants.RedColor, nil, nil, nil]
            let row1 = [Constants.RedColor, Constants.RedColor, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row1
            rows[3] = row2
            return

        case Constants.ThreeByThreeCross:
            let row0 = [nil, Constants.GreyColor, nil, nil]
            let row1 = [Constants.GreyColor, Constants.GreyColor, Constants.GreyColor, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row0
            rows[3] = row2
            return

        case Constants.TwoByFourTee:
            let row0 = [Constants.LightPinkColor, nil, nil, nil]
            let row1 = [Constants.LightPinkColor, Constants.LightPinkColor, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row0
            rows[3] = row0
            return

        case Constants.TwoByFourWhy:
            let row0 = [Constants.DarkGreenColor, nil, nil, nil]
            let row1 = [Constants.DarkGreenColor, Constants.DarkGreenColor, nil, nil]
            let row2 = [nil, Constants.DarkGreenColor, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row2
            rows[3] = row2
            return

        case Constants.ThreeByThreeEmm:
            let row0 = [nil, Constants.DarkPinkColor, Constants.DarkPinkColor, nil]
            let row1 = [Constants.DarkPinkColor, Constants.DarkPinkColor, nil, nil]
            let row2 = [Constants.DarkPinkColor, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row2
            return
            
        default:
            return
        }
        
    }
    
//    func rotate(degrees: Int = 90) {
//        if degrees % 90 != 0 {
//            NSException(name: NSExceptionName(rawValue: "Disallowed"), reason: "Not able to rotate a matrix \(degrees) degrees", userInfo: nil).raise()
//        }
//        
//        var turns = degrees / 90
//        
//        while turns > 0 {
//            turns -= 1
//            rotate90Degrees()
//        }
//    }
    
    func rotate90Degrees() -> [[UIColor?]] {
        
        // outer loop - N times where N is the number of elements in the first row
        let numberOfColsInPiece = rows[0].count
        
        for outerLoopCounter in 0...numberOfColsInPiece - 1 {
            
            // inner loop - M times where M is the number of rows in the Piece
            let numberOfRowsInPiece = rows.count
            
            for innerLoopCounter in 0...numberOfRowsInPiece - 1 {
                
                
                
            }
            
        }
        
        
        
        // Create N temporary arrays where N = number of elements in the row
        var tempArrays = Array(repeating: [UIColor?](), count: rows[0].count)
        
        // Iterate across each row
        for rowIndex in 0...(rows.count - 1) {
            
            let donorRow = rows[rowIndex]
            
            var relevantRow = [UIColor?]()
            
            // Walk across the donor row and put each element in the corresponding
            for colIndex in 0...(donorRow.count - 1) {
                
                // get the relevant row from tempArrays
                relevantRow = tempArrays[colIndex]
                
                // append the current element from the donor row
                relevantRow.append(donorRow[colIndex])
                
            }
            
            tempArrays[rowIndex] = relevantRow
            
        }
        
        return tempArrays
        
    }
    
}

/*
 struct Piece: CustomStringConvertible {
 let id: Int
 let points: [Point]
 static let EmptyPiece = Piece(id: Constants.EmptyPieceIdentifier, points: [])
 
 var isEmpty: Bool {
 return points.count == 0 && id == Constants.EmptyPieceIdentifier
 }
 
 var description: String {
 return "<Piece> Empty = \(isEmpty)"
 }
 }
 */
