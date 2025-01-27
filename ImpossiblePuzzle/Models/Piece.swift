//
//  Piece.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct Piece: Identifiable, Equatable, Hashable {
    
    let id: String
    let elements: [Element]
    var position = Position(row: 0, column: 0)
    
    static func == (lhs: Piece, rhs: Piece) -> Bool {
        return lhs.id == rhs.id
    }
}
