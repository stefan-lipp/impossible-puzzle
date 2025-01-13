//
//  AppView.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct AppView: View {
    
    private let board = Board()
    
    var body: some View {
        BoardView(board: board)
            
    }
}

#Preview {
    AppView()
}
