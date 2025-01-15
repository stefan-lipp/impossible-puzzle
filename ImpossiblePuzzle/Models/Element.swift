//
//  Element.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 15.01.25.
//

import SwiftUI

struct Element: Identifiable {
    
    let id: String
    let offset: Position
    
    init(id: String, row: Int, column: Int) {
        self.id = id
        self.offset = Position(row: row, column: column)
    }
}
