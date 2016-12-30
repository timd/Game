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

        let expectedRow0 = [UIColor.green, UIColor.green, nil, nil]
        let expectedRow1 = [UIColor.green, UIColor.green, nil, nil]
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
    

    
}
