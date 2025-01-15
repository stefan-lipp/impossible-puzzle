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
    let type: FieldType
    var isFilled: Bool
    
    init(id: String, position: Position, type: FieldType, isFilled: Bool = false) {
        self.id = id
        self.position = position
        self.type = type
        self.isFilled = isFilled
    }
}

enum FieldType {
    case inside
    case border
    case outside
}
