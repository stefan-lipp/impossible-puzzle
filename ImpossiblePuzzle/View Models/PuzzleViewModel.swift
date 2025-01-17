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
    
    func placeAsManyPiecesAsPossible() {
        let _ = puzzle.placeAsManyPiecesAsPossible()
    }
    
    func reset() {
        puzzle.reset()
    }
}
