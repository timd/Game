//
//  PieceCreationTests.swift
//  Game
//
//  Created by Tim on 30/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import XCTest
@testable import Game

class PieceCreationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_WhenCreatingTwoByTwo_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByTwo, andId: 1)
        
        let expectedRow0 = [UIColor.green, UIColor.green, nil, nil]
        let expectedRow1 = [UIColor.green, UIColor.green, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        let expectedRow3: [UIColor?] = [nil, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow1, expectedRow2, expectedRow3]
        
        for rowIndex in 0...testArray.count - 1 {
            
            let testRow = pieceUnderTest.rows[rowIndex]
            let expectedRow = testArray[rowIndex]
            
            for colIndex in 0...testRow.count - 1 {
                
                XCTAssertEqual(testRow[colIndex], expectedRow[colIndex], "expected \(expectedRow[colIndex]), got \(testRow[rowIndex])")
                
            }
            
        }
        
    }

    func test_WhenCreatingOneByFour_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.OneByFour, andId: 1)
        
        let expectedRow0 = [UIColor.purple, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow0, expectedRow0, expectedRow0]

        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingFourByOne_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.FourByOne, andId: 1)
        
        let expectedRow0 = [UIColor.purple, UIColor.purple, UIColor.purple, UIColor.purple]
        let expectedRow1: [UIColor?] = [nil, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow1, expectedRow1, expectedRow1]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingFourByOneEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.OneByFourEll, andId: 1)
        
        let expectedRow0 = [UIColor.blue, nil, nil, nil]
        let expectedRow1: [UIColor?] = [UIColor.blue, UIColor.blue, nil, nil]
        let testArray = [expectedRow0, expectedRow0, expectedRow0, expectedRow1]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingTwoByTwoEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByTwoEll, andId: 1)
        
        let expectedRow0 = [UIColor.white, nil, nil, nil]
        let expectedRow1 = [UIColor.white, UIColor.white, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow2, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingOneByThreeEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.OneByThreeEll, andId: 1)
        
        let expectedRow0 = [UIColor.orange, nil, nil, nil]
        let expectedRow1 = [UIColor.orange, UIColor.orange, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow0, expectedRow1, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingThreeByThreeEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.ThreeByThreeEll, andId: 1)
        
        let expectedRow0 = [UIColor.blue, nil, nil, nil]
        let expectedRow1 = [UIColor.blue, UIColor.blue, UIColor.blue, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow0, expectedRow1, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }
    
    func test_WhenCreatingTwoByThreeCee_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByThreeCee, andId: 1)
        
        let expectedRow0 = [UIColor.yellow, UIColor.yellow, nil, nil]
        let expectedRow1 = [UIColor.yellow, nil, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow0, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingTwoByThreeBee_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByThreeBee, andId: 1)
        
        let expectedRow0 = [UIColor.red, nil, nil, nil]
        let expectedRow1 = [UIColor.red, UIColor.red, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow1, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingThreeByThreeCross_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.ThreeByThreeCross, andId: 1)
        
        let expectedRow0 = [nil, UIColor.gray, nil, nil]
        let expectedRow1 = [UIColor.gray, UIColor.gray, UIColor.gray, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow0, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }
    
    // Helper functions
    func testRows(pieceUnderTest: Piece, testArray: [[UIColor?]]) {
        
        for rowIndex in 0...testArray.count - 1 {
            
            let testRow = pieceUnderTest.rows[rowIndex]
            let expectedRow: [UIColor?] = testArray[rowIndex]
            
            for colIndex in 0...testRow.count - 1 {
                
                XCTAssertEqual(testRow[colIndex], expectedRow[colIndex], "expected \(expectedRow[colIndex]), got \(testRow[rowIndex])")
                
            }
            
        }

    }
    
    
}
