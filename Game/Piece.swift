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
