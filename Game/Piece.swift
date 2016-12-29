//
//  Piece.swift
//  Game
//
//  Created by Tim on 29/12/16.
//  Copyright © 2016 duckett.de. All rights reserved.
//

import Foundation
import UIKit

class Piece {
    
    var type: String
    
    var rows: Array<Array<UIColor?>>
    
    init(withType: String) {
        
        self.type = withType
        
        // Create row arrays
        rows = Array<Array<UIColor?>>()

        for _ in 1...5 {
            let rowArray = Array<UIColor?>(repeating: nil, count: 5)
            rows.append(rowArray)
        }
        
    }
    
}
