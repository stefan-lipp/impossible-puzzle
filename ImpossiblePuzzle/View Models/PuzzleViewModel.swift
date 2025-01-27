//
//  PuzzleViewModel.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 15.01.25.
//

import Foundation

class PuzzleViewModel: ObservableObject {
    
    @Published private var puzzle = Puzzle()
    
    private var isSolved = false
    
    var fields: [Field] {
        puzzle.fields
    }
    
    private var placedPieces: [Piece] = []
    private var remainingPieces: [Piece] = pieces
    private var visitedRemainingPieces: Array<[Piece]> = []
    
    func solve() {
        
        while !isSolved {
            
            if remainingPieces.count > 9 {
                print("\(remainingPieces.count) remaining pieces")
            }
            
            if var nextPiece = remainingPieces.first {
                let remainingPiecesWithoutNext = Array(remainingPieces.dropFirst())
                
                if visitedRemainingPieces.contains(remainingPiecesWithoutNext) {
                    visitedRemainingPieces.append(remainingPieces)
                    let lastPiece = placedPieces.removeLast()
                    puzzle.remove(lastPiece)
                    remainingPieces = remainingPieces + [lastPiece]
                } else if let position = puzzle.place(nextPiece) {
                    nextPiece.position = position
                    placedPieces.append(nextPiece)
                    remainingPieces.removeFirst()
                } else if !placedPieces.isEmpty  {
                    visitedRemainingPieces.append(remainingPieces)
                    let lastPiece = placedPieces.removeLast()
                    puzzle.remove(lastPiece)
                    remainingPieces = [lastPiece] + remainingPieces
                }
            } else {
                print("Puzzle solved!")
                isSolved = true
            }
        }
    }
    
    func reset() {
        puzzle.reset()
    }
}
