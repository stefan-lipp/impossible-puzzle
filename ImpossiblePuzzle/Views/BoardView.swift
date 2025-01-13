//
//  BoardView.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//


import SwiftUI

struct BoardView: View {
    
    let board: Board
    
    var body: some View {
        let fieldsByRow = Dictionary(grouping: board.fields, by: \.row)
        let rowFields = Array(fieldsByRow.values)
        
        VStack(spacing: -40) {
            ForEach(0..<17) { row in
                let rowFields = board.fields.filter { $0.row == row }
                HStack {
                    ForEach(rowFields) { field in
                        FieldView()
                    }
                }
            }
        }
    }
}
