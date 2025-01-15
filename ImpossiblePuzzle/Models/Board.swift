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
        for row in 0...20 {
            let maxIndexInRow = row % 2 == 0 ? 4 : 5
            for column in 0...maxIndexInRow {
                let position = Position(row: row, column: column)
                let id = position.description
                let type = fieldType(for: position)
                let isFilled = position == start
                let field = Field(id: id, position: position, type: type, isFilled: isFilled)
                fields.append(field)
            }
        }
    }
    
    private func fieldType(for position: Position) -> FieldType {
        if isBorder(position) { return .border }
        if isOutside(position) { return .outside }
        return .inside
    }
    
    
    private func isBorder(_ position: Position) -> Bool {
        switch position.row {
        case 0, 20: return position.column == 2
        case 1, 19: return position.column == 2 || position.column == 3
        case 2, 18: return position.column == 1 || position.column == 3
        case 3, 17: return position.column == 1 || position.column == 4
        case 4, 16: return position.column == 0 || position.column == 4
        case 5, 7, 9, 11, 13, 15: return position.column == 0 || position.column == 5
        default: return false
        }
    }
    
    private func isOutside(_ position: Position) -> Bool {
        switch position.row {
        case 0, 20: return position.column < 2 || position.column > 2
        case 1, 19: return position.column < 2 || position.column > 3
        case 2, 18: return position.column == 0 || position.column == 4
        case 3, 17: return position.column == 0 || position.column == 5
        default: return false
        }
    }
}
