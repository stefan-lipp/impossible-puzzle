//
//  Piece.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct Piece: Identifiable {
    
    let id: String
    let position: Position
    let elements: [Element]
}
