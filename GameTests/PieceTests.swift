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
        let pieceUnderTest = Piece(withType: "foo")
        XCTAssertEqual(pieceUnderTest.rows.count, 5, "Should have 5 rows, got \(pieceUnderTest.rows.count)")
        
        for index in 1...pieceUnderTest.rows.count - 1 {
            let row = pieceUnderTest.rows[index]
            XCTAssertEqual(row.count, 5, "Should have 5 cols, got \(row.count)")
        }
    }
    
}
