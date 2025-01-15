//
//  Puzzle.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 15.01.25.
//

import Foundation

struct Puzzle {
    
    private(set) var fields: [Field] = []
    private(set) var pieces: [Piece] = []
    
    init() {
        setupFields()
    }
    
    mutating func place(_ piece: Piece) -> Bool {
        for field in fields {
            guard field.type == .inside && !field.isFilled else { continue }
            guard canPiece(piece, bePlacedAt: field.position) else { continue }
            markFieldsAsFilled(for: piece, at: field.position)
            pieces.append(piece)
            return true
        }
        return false
    }
    
    mutating func reset() {
        setupFields()
    }
    
    private mutating func setupFields() {
        fields = []
        let startPosition = Position(row: 10, column: 5)
        for row in 0...20 {
            let minColumn = row % 2 == 0 ? 1 : 0
            let maxColumn = row % 2 == 0 ? 9 : 10
            for column in stride(from: minColumn, through: maxColumn, by: 2) {
                let position = Position(row: row, column: column)
                let id = position.description
                let type = fieldType(for: position)
                let isFilled = position == startPosition
                let field = Field(id: id, position: position, type: type, isFilled: isFilled)
                fields.append(field)
            }
        }
    }
    
    
    private func canPiece(_ piece: Piece, bePlacedAt position: Position) -> Bool {
        for element in piece.elements {
            let elementPosition = Position(row: position.row + element.offset.row, column: position.column + element.offset.column)
            guard let field = fields.first(where: { $0.position == elementPosition }) else { return false }
            guard field.type == .inside && !field.isFilled else { return false }
        }
        return true
    }
    
    private mutating func markFieldsAsFilled(for piece: Piece, at position: Position) {
        for element in piece.elements {
            let elementPosition = Position(row: position.row + element.offset.row, column: position.column + element.offset.column)
            guard let index = fields.firstIndex(where: { $0.position == elementPosition }) else { return }
            fields[index].isFilled = true
        }
    }
    
    
    private func fieldType(for position: Position) -> FieldType {
        if isBorder(position) { return .border }
        if isOutside(position) { return .outside }
        return .inside
    }
    
    private func isBorder(_ position: Position) -> Bool {
        switch position.row {
        case 0, 20: return position.column == 5
        case 1, 19: return position.column == 4 || position.column == 6
        case 2, 18: return position.column == 3 || position.column == 7
        case 3, 17: return position.column == 2 || position.column == 8
        case 4, 16: return position.column == 1 || position.column == 9
        case 5, 7, 9, 11, 13, 15: return position.column == 0 || position.column == 10
        default: return false
        }
    }
    
    private func isOutside(_ position: Position) -> Bool {
        switch position.row {
        case 0, 20: return position.column < 4 || position.column > 6
        case 1, 19: return position.column < 3 || position.column > 7
        case 2, 18: return position.column < 2 || position.column > 8
        case 3, 17: return position.column < 1 || position.column > 9
        default: return false
        }
    }
}
