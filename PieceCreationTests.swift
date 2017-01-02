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
        
        let expectedRow0: [UIColor?] = [Constants.LightGreenColor, Constants.LightGreenColor, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.LightGreenColor, Constants.LightGreenColor, nil, nil]
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
        
        let expectedRow0: [UIColor?] = [Constants.PurpleColor, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow0, expectedRow0, expectedRow0]

        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingFourByOne_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.FourByOne, andId: 1)
        
        let expectedRow0 = [Constants.PurpleColor, Constants.PurpleColor, Constants.PurpleColor, Constants.PurpleColor]
        let expectedRow1: [UIColor?] = [nil, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow1, expectedRow1, expectedRow1]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingFourByOneEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByFourEll, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.DarkBlueColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.DarkBlueColor, Constants.DarkBlueColor, nil, nil]
        let testArray = [expectedRow0, expectedRow0, expectedRow0, expectedRow1]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingTwoByTwoEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByTwoEll, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.WhiteColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.WhiteColor, Constants.WhiteColor, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow2, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingOneByThreeEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.OneByThreeEll, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.OrangeColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.OrangeColor, Constants.OrangeColor, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow0, expectedRow1, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingThreeByThreeEll_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.ThreeByThreeEll, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.LightBlueColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.LightBlueColor, Constants.LightBlueColor, Constants.LightBlueColor, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow0, expectedRow1, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }
    
    func test_WhenCreatingTwoByThreeCee_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByThreeCee, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.YellowColor, Constants.YellowColor, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.YellowColor, nil, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow0, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingTwoByThreeBee_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByThreeBee, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.RedColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.RedColor, Constants.RedColor, nil, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow1, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingThreeByThreeCross_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.ThreeByThreeCross, andId: 1)
        
        let expectedRow0: [UIColor?] = [nil, Constants.GreyColor, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.GreyColor, Constants.GreyColor, Constants.GreyColor, nil]
        let expectedRow2: [UIColor?] = [nil, nil, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow0, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }

    func test_WhenCreatingTwoByFourTee_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByFourTee, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.LightPinkColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.LightPinkColor, Constants.LightPinkColor, nil, nil]
        
        let testArray = [expectedRow0, expectedRow1, expectedRow0, expectedRow0]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }
    
    func test_WhenCreatingTwoByFourWhy_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.TwoByFourWhy, andId: 1)
        
        let expectedRow0: [UIColor?] = [Constants.DarkGreenColor, nil, nil, nil]
        let expectedRow1: [UIColor?] = [Constants.DarkGreenColor, Constants.DarkGreenColor, nil, nil]
        let expectedRow2: [UIColor?] = [nil, Constants.DarkGreenColor, nil, nil]
        let testArray = [expectedRow0, expectedRow1, expectedRow2, expectedRow2]
        
        testRows(pieceUnderTest: pieceUnderTest, testArray: testArray)
        
    }
    
    func test_WhenCreatingThreeByThreeEmm_ShouldHaveTheCorrectLayout() {
        
        let pieceUnderTest = Piece(withType: Constants.ThreeByThreeEmm, andId: 1)
        
        let expectedRow0: [UIColor?] = [nil, Constants.DarkPinkColor, Constants.DarkPinkColor, nil]
        let expectedRow1: [UIColor?] = [Constants.DarkPinkColor, Constants.DarkPinkColor, nil, nil]
        let expectedRow2: [UIColor?] = [Constants.DarkPinkColor, nil, nil, nil]
        let expectedRow3: [UIColor?] = [nil, nil, nil, nil]
        let testArray = [expectedRow0, expectedRow1, expectedRow2, expectedRow3]
        
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
