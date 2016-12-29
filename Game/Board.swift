//
//  Board.swift
//  Game
//
//  Created by Tim on 29/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import Foundation

class Board {
    
    var rows: Array<Array<Piece?>>
    
    init() {
        
        // Create row arrays
        rows = Array<Array<Piece?>>()
        
        for _ in 0...9 {
            
            let rowArray = Array<Piece?>(repeating: nil, count: 10)
            
            rows.append(rowArray)
            
        }

        for rowCount in 1...10 {
        
            var rowArray = rows[rowCount]
            
            for colIndex in 0...rowCount {
                let piece = Piece(withType: "blank")
                rowArray.insert(piece, at: colIndex)
            }
            
        }
        
    }

    func setPiece(piece:Piece?, atRow theRow: Int, atCol theCol: Int) -> Bool {
        
        if (theRow > 9 || theCol > 9) {
            return false
        }
        
        var row = rows[theRow]
        
        row[theCol] = piece
        
        rows[theRow] = row

        return true
        
    }
    
    func getPieceAt(row: Int, col:Int) -> Piece? {
        
        if (row > 9 || col > 9) {
            return nil
        }
        
        // Get row from board array
        let row = rows[row]
        
        // Get piece from row
        let piece = row[col]
        
        return piece
        
    }
    
}
