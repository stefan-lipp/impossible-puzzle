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
        VStack(spacing: -40) {
            ForEach(0..<21) { row in
                let rowFields = board.fields.filter { $0.position.row == row }
                HStack {
                    ForEach(rowFields) { field in
                        FieldView(field: field)
                    }
                }
            }
        }
    }
}

#Preview {
    BoardView(board: Board(start: Position(row: 10, column: 2)))
}
