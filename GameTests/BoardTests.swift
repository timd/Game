//
//  GameTests.swift
//  GameTests
//
//  Created by Tim on 29/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import XCTest
@testable import Game

class BoardTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_WhenCreatingBoard_ShouldHaveCorrectNumberOfRowsInBoard() {
        let boardUnderTest = Board()
        XCTAssertEqual(boardUnderTest.rows.count, 10, "Should have 10 rows, got \(boardUnderTest.rows.count)")
    }
    
    func test_WhenCreatingBoard_ShouldHaveCorrectNumberOfColumnsInEachBoardRow() {
        let boardUnderTest = Board()
        
        for rowNumber in 0...boardUnderTest.rows.count - 1 {
            let rowUnderTest = boardUnderTest.rows[rowNumber]
            XCTAssertEqual(rowUnderTest.count, 10, "Should have 10 elements, got \(rowUnderTest.count)")
        }
        
    }
    
    func test_WhenSettingAPieceWithinBounds_ShouldReturnTrue() {

        let boardUnderTest = Board()
        let piece = Piece(withType: "foo")
        let result = boardUnderTest.setPiece(piece: piece, atRow: 5, atCol: 5)
        XCTAssertTrue(result)
        
    }
    
    func test_WhenSettingPiece_ShouldHaveCorrectPieceOnBoard() {
        
        let boardUnderTest = Board()
        let piece = Piece(withType: "foo")
        let _ = boardUnderTest.setPiece(piece: piece, atRow: 5, atCol: 5)
        
        let pieceUnderTest = boardUnderTest.getPieceAt(row: 5, col: 5)
        XCTAssertNotNil(pieceUnderTest)
        
    }
    
    func test_WhenSettingAPieceOutOfBounds_TheBoardShouldReturnFalse() {
        
        let boardUnderTest = Board()
        let piece = Piece(withType: "foo")
        
        let result = boardUnderTest.setPiece(piece: piece, atRow: 11, atCol: 11)
        
        XCTAssertFalse(result)
    }
    
    func test_WhenGettingPieceOutOfBounds_ShouldReturnNil() {
        
        let boardUnderTest = Board()
        let result = boardUnderTest.getPieceAt(row: 11, col: 11)
        XCTAssertNil(result)
        
    }
    
}
