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
        
        let piece = Piece(withType: Constants.IllegalCellIdentifier, andId: 1)
        
        let rowArray0: Array<Piece?> = [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
        let rowArray1: Array<Piece?> = [nil, nil, nil, nil, nil, nil, nil, nil, nil, piece]
        let rowArray2: Array<Piece?> = [nil, nil, nil, nil, nil, nil, nil, nil, piece, piece]
        let rowArray3: Array<Piece?> = [nil, nil, nil, nil, nil, nil, nil, piece, piece, piece]
        let rowArray4: Array<Piece?> = [nil, nil, nil, nil, nil, nil, piece, piece, piece, piece]
        let rowArray5: Array<Piece?> = [nil, nil, nil, nil, nil, piece, piece, piece, piece, piece]
        let rowArray6: Array<Piece?> = [nil, nil, nil, nil, piece, piece, piece, piece, piece, piece]
        let rowArray7: Array<Piece?> = [nil, nil, nil, piece, piece, piece, piece, piece, piece, piece]
        let rowArray8: Array<Piece?> = [nil, nil, piece, piece, piece, piece, piece, piece, piece, piece]
        let rowArray9: Array<Piece?> = [nil, piece, piece, piece, piece, piece, piece, piece, piece, piece]
        
        rows.append(rowArray0)
        rows.append(rowArray1)
        rows.append(rowArray2)
        rows.append(rowArray3)
        rows.append(rowArray4)
        rows.append(rowArray5)
        rows.append(rowArray6)
        rows.append(rowArray7)
        rows.append(rowArray8)
        rows.append(rowArray9)
    }

    func setPiece(piece:Piece?, atRow theRow: Int, atCol theCol: Int) -> Bool {
        
        if (theRow > 9 || theCol > 9) {
            return false
        }
        
        var row = rows[theRow]
        
        let colContent = row[theCol]
        
        // Check if there is already a piece in place
        if colContent != nil {
            return false
        }
        
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
