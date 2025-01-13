//
//  AppView.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct AppView: View {
    
    private let board = Board(start: Position(row: 8, column: 2))
    
    var body: some View {
        BoardView(board: board)
    }
}

#Preview {
    AppView()
}
