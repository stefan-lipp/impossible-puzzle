//
//  Piece.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct Piece: Identifiable {
    
    let id: String
    let elements: [Element]
    let position = Position(row: 0, column: 0)
}
