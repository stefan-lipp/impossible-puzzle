//
//  PuzzleView.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct PuzzleView: View {
    
    @ObservedObject var viewModel: PuzzleViewModel
    
    var body: some View {
        VStack {
            boardView
            
            HStack {
                Button("Place Long Piece") {
                    viewModel.place(longPiece)
                }
                Button("Reset Puzzle") {
                    viewModel.reset()
                }
            }
            .padding(20)
            .fontWeight(.medium)
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.white)
            .tint(.secondary)
        }
    }
    
    private var boardView: some View {
        VStack(spacing: -40) {
            ForEach(0..<21) { row in
                let rowFields = viewModel.fields.filter { $0.position.row == row }
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
    PuzzleView(viewModel: PuzzleViewModel())
}
