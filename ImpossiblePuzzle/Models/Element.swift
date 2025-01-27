//
//  Element.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 15.01.25.
//

import SwiftUI

struct Element: Identifiable, Hashable {
    
    let id: Int
    let offset: Position
    
    init(id: Int, row: Int, column: Int) {
        self.id = id
        self.offset = Position(row: row, column: column)
    }
}
