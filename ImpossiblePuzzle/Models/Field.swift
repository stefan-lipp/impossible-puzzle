//
//  Field.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct Field: Identifiable {
    
    let id: String
    let position: Position
    var isFilled: Bool
    
    init(id: String, row: Int, column: Int, isFilled: Bool = false) {
        self.id = id
        self.position = Position(row: row, column: column)
        self.isFilled = isFilled
    }
}
