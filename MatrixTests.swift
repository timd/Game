//
//  MatrixTests.swift
//  Game
//
//  Created by Tim on 31/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import XCTest
@testable import Game

class MatrixTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_WhenRotatingA1x1_ShouldProduceTheCorrect1x1() {
        
        let test1x1 = [
            [1]
        ]
        
        let result1x1 = [
            [1]
        ]
        
        let matrixHelper = Matrix()
        
        let testMatrix = matrixHelper.rotateBy90(originalMatrix: test1x1)
        
        for index in 0...(testMatrix.count - 1) {
            
            let needleRow = testMatrix[index]
            let haystackRow = result1x1[index]
            
            for colCount in 0...needleRow.count - 1 {
                
                let needle = needleRow[colCount] as! Int
                let haystack = haystackRow[colCount]
                XCTAssertEqual(needle, haystack)
                
            }
            
        }
        
    }

    func test_WhenRotatingA3x3_ShouldProduceTheCorrect3x3() {
        
        let test = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        
        let result = [
            [7,4,1],
            [8,5,2],
            [9,6,3]
        ]
        
        let matrixHelper = Matrix()
        
        let testMatrix = matrixHelper.rotateBy90(originalMatrix: test)
        
        for index in 0...(testMatrix.count - 1) {
            
            let needleRow = testMatrix[index]
            let haystackRow = result[index]
            
            for colCount in 0...needleRow.count - 1 {
                
                let needle = needleRow[colCount] as! Int
                let haystack = haystackRow[colCount]
                XCTAssertEqual(needle, haystack)
                
            }
            
        }
        
    }
    
    func test_WhenRotatingA4x1_ShouldProduceTheCorrect1x4() {
        
        let test4x1 = [
            [1,2,3,4]
        ]
        
        let result1x4 = [
            [1],
            [2],
            [3],
            [4]
        ]
        
        let matrixHelper = Matrix()
        
        let testMatrix = matrixHelper.rotateBy90(originalMatrix: test4x1)
        
        for index in 0...(testMatrix.count - 1) {
            
            let needleRow = testMatrix[index]
            let haystackRow = result1x4[index]
            
            for colCount in 0...needleRow.count - 1 {
                
                let needle = needleRow[colCount] as! Int
                let haystack = haystackRow[colCount]
                XCTAssertEqual(needle, haystack)
                
            }
            
        }
        
    }

    func test_WhenRotatingA2x4_ShouldProduceTheCorrect4x2() {
        
        let test2x4 = [
            ["A", "B"],
            ["C", "D"],
            ["E", "F"],
            ["G", "H"]
        ]
        
        let result4x2 = [
            ["G", "E", "C", "A"],
            ["H", "F", "D", "B"]
        ]
        
        let matrixHelper = Matrix()
        
        let testMatrix = matrixHelper.rotateBy90(originalMatrix: test2x4)
        
        for index in 0...(testMatrix.count - 1) {
            
            let needleRow = testMatrix[index]
            let haystackRow = result4x2[index]
            
            for colCount in 0...needleRow.count - 1 {
                
                let needle = needleRow[colCount] as! String
                let haystack = haystackRow[colCount]
                XCTAssertEqual(needle, haystack)
                
            }
            
        }
        
    }

}
