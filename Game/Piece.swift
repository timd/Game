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
    
    mutating func populatePiece(type: Int) {
        
        switch type {
        
        case Constants.EmptyPiece:
            // No action
            return
            
        case Constants.TwoByTwo:
            // 2x2
            let rowOne = [UIColor.green, UIColor.green, nil, nil]
            rows[0] = rowOne
            rows[1] = rowOne
            return
            
        case Constants.OneByFour:
            // 1x4
            let rowOne = [UIColor.purple, nil, nil, nil]
            rows[0] = rowOne
            rows[1] = rowOne
            rows[2] = rowOne
            rows[3] = rowOne
            return
            
        case Constants.FourByOne:
            // 4 x 1
            let rowOne = [UIColor.purple, UIColor.purple, UIColor.purple, UIColor.purple]
            rows[0] = rowOne
            return
            
        case Constants.OneByFourEll:
            let rowOne = [UIColor.blue, nil, nil, nil]
            let rowTwo = [UIColor.blue, UIColor.blue, nil, nil]
            rows[0] = rowOne
            rows[1] = rowOne
            rows[2] = rowOne
            rows[3] = rowTwo
            return
            
        case Constants.TwoByTwoEll:
            let row0 = [UIColor.white, nil, nil, nil]
            let row1 = [UIColor.white, UIColor.white, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row2
            rows[3] = row2
            return

        case Constants.OneByThreeEll:
            let row0 = [UIColor.orange, nil, nil, nil]
            let row1 = [UIColor.orange, UIColor.orange, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row0
            rows[2] = row1
            rows[3] = row2
            return

        case Constants.ThreeByThreeEll:
            let row0 = [UIColor.blue, nil, nil, nil]
            let row1 = [UIColor.blue, UIColor.blue, UIColor.blue, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row0
            rows[2] = row1
            rows[3] = row2
            return

        case Constants.TwoByThreeCee:
            let row0 = [UIColor.yellow, UIColor.yellow, nil, nil]
            let row1 = [UIColor.yellow, nil, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row0
            rows[3] = row2
            return

        case Constants.TwoByThreeBee:
            let row0 = [UIColor.red, nil, nil, nil]
            let row1 = [UIColor.red, UIColor.red, nil, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row1
            rows[3] = row2
            return

        case Constants.ThreeByThreeCross:
            let row0 = [nil, UIColor.gray, nil, nil]
            let row1 = [UIColor.gray, UIColor.gray, UIColor.gray, nil]
            let row2: [UIColor?] = [nil, nil, nil, nil]
            rows[0] = row0
            rows[1] = row1
            rows[2] = row0
            rows[3] = row2
            return
            
        default:
            return
        }
        
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
