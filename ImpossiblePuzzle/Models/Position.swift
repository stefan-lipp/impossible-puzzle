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
}
