//
//  Pieces.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

let pieces = [
    halfTreePiece360,
    yPiece360,
    onePiece360,
    longPiece360,
    
    lampPiece,
    spoonPiece,
    chairPiece,
    bookPiece,
    bowlPiece,
    macPiece,
    oilPiece,
    armPiece
]


enum PieceType: String, CaseIterable {
    case halfTreePiece
    case yPiece
    case onePiece
    case longPiece
    
    
    func rotations() -> [Piece] {
        switch self {
        case .halfTreePiece: return [halfTreePiece360, halfTreePiece240, halfTreePiece120]
        case .yPiece: return [yPiece360, yPiece240, yPiece120]
        case .onePiece: return [onePiece360, onePiece240, onePiece120]
        case .longPiece: return [longPiece360, longPiece240, longPiece120]
        }
    }
}


// *
//     *
// *
//     *
//
//     *

let halfTreePiece360 = Piece(id: "halfTreePiece360", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 0),
    Element(id: 4, row: 3, column: 1),
    Element(id: 5, row: 5, column: 1)
])

let halfTreePiece240 = Piece(id: "halfTreePiece240", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: -1),
    Element(id: 3, row: 3, column: -1),
    Element(id: 4, row: 2, column: -2),
    Element(id: 5, row: 4, column: -2)
])

let halfTreePiece120 = Piece(id: "halfTreePiece120", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 0, column: 2),
    Element(id: 4, row: 2, column: 2),
    Element(id: 5, row: 1, column: 3)
])


// *       *
//     *
//
//     *
//
//     *

let yPiece360 = Piece(id: "yPiece360", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 0, column: 2),
    Element(id: 3, row: 1, column: 1),
    Element(id: 4, row: 3, column: 1),
    Element(id: 5, row: 5, column: 1)
])

let yPiece240 = Piece(id: "yPiece240", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: -1),
    Element(id: 3, row: 2, column: -2),
    Element(id: 4, row: 1, column: -3),
    Element(id: 5, row: 3, column: -2)
])

let yPiece120 = Piece(id: "yPiece120", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 2),
    Element(id: 4, row: 1, column: 3),
    Element(id: 5, row: 3, column: 2)
])


// *
//     *
// *
//
// *
//
// *

let onePiece360 = Piece(id: "onePiece360", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 0),
    Element(id: 4, row: 4, column: 0),
    Element(id: 5, row: 6, column: 0)
])

let onePiece240 = Piece(id: "onePiece240", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: -1),
    Element(id: 3, row: 2, column: -2),
    Element(id: 4, row: 3, column: -3),
    Element(id: 5, row: 1, column: -3)
])

let onePiece120 = Piece(id: "onePiece120", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 2),
    Element(id: 4, row: 3, column: 3),
    Element(id: 5, row: 4, column: 2)
])


// *
//
// *
//
// *
//
// *
//     *

let longPiece360 = Piece(id: "longPiece360", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 4, column: 0),
    Element(id: 4, row: 6, column: 0),
    Element(id: 5, row: 7, column: 1)
])

let longPiece240 = Piece(id: "longPiece240", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: -1),
    Element(id: 4, row: 4, column: -2),
    Element(id: 5, row: 5, column: -3)
])

let longPiece120 = Piece(id: "longPiece120", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: -1),
    Element(id: 3, row: 1, column: 1),
    Element(id: 4, row: 2, column: 2),
    Element(id: 5, row: 3, column: 3)
])


//         *
//     *
//
//     *
// *
//     *

let lampPiece = Piece(id: "lampPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: -1),
    Element(id: 3, row: 3, column: -1),
    Element(id: 4, row: 4, column: -2),
    Element(id: 5, row: 5, column: -1)
])


// *
//
// *
//     *
//
//     *
//
//     *

let spoonPiece = Piece(id: "spponPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: 1),
    Element(id: 4, row: 5, column: 1),
    Element(id: 5, row: 7, column: 1)
])


// *
//
// *
//     *
// *
//     *

let chairPiece = Piece(id: "chairPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: 1),
    Element(id: 4, row: 4, column: 0),
    Element(id: 5, row: 5, column: 1)
])


//         *
//
//         *
//
//         *
//     *
// *

let bookPiece = Piece(id: "bookPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 4, column: 0),
    Element(id: 4, row: 5, column: -1),
    Element(id: 5, row: 6, column: -2)
])

// *
//
// *       *
//     *
//         *

let bowlPiece = Piece(id: "bowlPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: 1),
    Element(id: 4, row: 2, column: 2),
    Element(id: 5, row: 4, column: 2)
])


//     *
//
//     *
// *
//     *
//         *

let macPiece = Piece(id: "macPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: -1),
    Element(id: 4, row: 4, column: 0),
    Element(id: 5, row: 5, column: 1)
])


// *
//     *
//         *
//     *
//
//     *

let oilPiece = Piece(id: "oilPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 2),
    Element(id: 4, row: 3, column: 1),
    Element(id: 5, row: 5, column: 1)
])


// *       *
//     *        *
// *

let armPiece = Piece(id: "armPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 1, column: 1),
    Element(id: 4, row: 0, column: 2),
    Element(id: 5, row: 1, column: 3)
])
