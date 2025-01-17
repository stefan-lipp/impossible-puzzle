//
//  Position.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct Position: Equatable {
    
    let row: Int
    let column: Int
    
    var description: String {
        "(\(row),\(column))"
    }
    
    static func + (lhs: Position, rhs: Position) -> Position {
        Position(row: lhs.row + rhs.row, column: lhs.column + rhs.column)
    }
}
