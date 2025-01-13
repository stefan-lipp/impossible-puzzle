//
//  Board.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct Board {
    
    private(set) var fields: [Field] = []
    
    init(start: Position) {
        for row in 0..<17 {
            let numberOfColumns = numberOfColumns(inRow: row)
            for column in 0..<numberOfColumns {
                let id = "\(row), \(column)"
                let isStart = start.row == row && start.column == column
                let field = Field(id: id, row: row, column: column, isFilled: isStart)
                fields.append(field)
            }
        }
        
    }
    
    private func numberOfColumns(inRow row: Int) -> Int {
        switch row {
        case 0, 16: return 1
        case 1, 15: return 2
        case 2, 14: return 3
        default: return row % 2 == 0 ? 5 : 4
        }
    }
}
