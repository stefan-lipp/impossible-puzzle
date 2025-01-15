//
//  PuzzleViewModel.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 15.01.25.
//

import Foundation

class PuzzleViewModel: ObservableObject {
    
    @Published private var puzzle = Puzzle()
    
    var fields: [Field] {
        puzzle.fields
    }
    
    func place(_ piece: Piece) {
        let _ = puzzle.place(piece)
    }
    
    func reset() {
        puzzle.reset()
    }
}
