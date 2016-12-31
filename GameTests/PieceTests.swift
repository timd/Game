//
//  PieceTests.swift
//  Game
//
//  Created by Tim on 29/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import XCTest
@testable import Game

class PieceTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_WhenCreated_ThePieceShouldHaveA4x4Matrix() {
        let pieceUnderTest = Piece(withType: Constants.EmptyPiece, andId: 1)
        XCTAssertEqual(pieceUnderTest.rows.count, 4, "Should have 4 rows, got \(pieceUnderTest.rows.count)")
        
        for index in 1...pieceUnderTest.rows.count - 1 {
            let row = pieceUnderTest.rows[index]
            XCTAssertEqual(row.count, 4, "Should have 4 cols, got \(row.count)")
        }
    }
    
    func test_WhenAPieceCellIsRetrieved_ItShouldContainTheRightValues() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByTwo, andId: 1)

        let expectedRow0 = [Constants.LightGreenColor, Constants.LightGreenColor, nil, nil]
        let expectedRow1 = [Constants.LightGreenColor, Constants.LightGreenColor, nil, nil]
        let expectedRow2: Array<UIColor?> = [nil, nil, nil, nil]
        let expectedRow3: Array<UIColor?> = [nil, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow1, expectedRow2, expectedRow3]
        
        // Walk rows
        for rowIndex in 0...testArray.count - 1 {
            
            let expectedRow = testArray[rowIndex]
            
            // Walk cols
            for colIndex in 0...expectedRow.count - 1 {
                
                let expectedCellContent = expectedRow[colIndex]
                let actualCellContent = pieceUnderTest.getCell(row: rowIndex, col: colIndex)
                
                XCTAssertEqual(expectedCellContent, actualCellContent, "Row \(rowIndex) Col \(colIndex) Expected \(expectedCellContent), got \(actualCellContent)\n\n")
                
            }
            
        }
        
    }
    
    func test_WhenPieceIsReduced_ShouldBeReducedSuccessfully() {

        let originalPiece = Piece(withType: Constants.TwoByThreeBee, andId: Constants.TwoByThreeBee)
        
        let row0 = [true, false, false, false]
        let row1 = [true, true, false, false]
        let row2 = [true, true, false, false]
        let row3 = [false, false, false, false]
        let testPiece = [row0, row1, row2, row3]
        
        let returnedPiece: [[Bool]] = originalPiece.reducePiece()
        
        for rowIndex in 0...(returnedPiece.count - 1) {
            
            let testRow = testPiece[rowIndex]
            let returnedRow = returnedPiece[rowIndex]
            
            for colIndex in 0...(testRow.count - 1) {
                
                let testCell = testRow[colIndex]
                let returnedCell = returnedRow[colIndex]
                
                XCTAssertEqual(testCell, returnedCell, "Expecting \(testCell), got \(returnedCell)")
                
            }
            
        }

    }
    
    func test_WhenAPieceIsRotated_ShouldBeMutatedSuccessfully() {
        
        // Start with standard 2x3-B
        //  
        //  X---            XXX-
        //  XX--    =>      XX--
        //  xx--            ----
        //  ----            ----
        
        let originalPiece = Piece(withType: Constants.TwoByThreeBee, andId: Constants.TwoByThreeBee)
        
        let row0 = [Constants.RedColor, Constants.RedColor, Constants.RedColor, nil]
        let row1 = [Constants.RedColor, Constants.RedColor, nil, nil]
        let row2: [UIColor?] = [nil, nil, nil, nil]
        let row3: [UIColor?] = [nil, nil, nil, nil]
        let newPiece = [row0, row1, row2, row3]
        
        //originalPiece.rotate(by: 90)
        
        let rotatedPiece = originalPiece.rotate90Degrees()
        
        for rowIndex in 0...originalPiece.rows.count - 1 {
            
            let originalRow = originalPiece.rows[rowIndex]
            let testRow = rotatedPiece[rowIndex]
            
            for colIndex in 0...originalRow.count - 1 {
                
                let originalCell = originalRow[colIndex]
                let testCell = testRow[colIndex]
                
                XCTAssertEqual(originalCell, testCell, "Expected \(testCell), got \(originalCell)")
                
            }
            
        }
        
    }
    
}
