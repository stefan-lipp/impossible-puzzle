//
//  Pieces.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

let pieces = [
    yPiece,
    halfTreePiece,
    onePiece,
    longPiece,
    lampPiece,
    spoonPiece,
    chairPiece,
    bookPiece,
    bowlPiece,
    macPiece,
    oilPiece,
    armPiece
]

let yPiece = Piece(id: "yPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 0, column: 2),
    Element(id: 3, row: 1, column: 1),
    Element(id: 4, row: 3, column: 1),
    Element(id: 5, row: 5, column: 1)
])

let halfTreePiece = Piece(id: "halfTreePiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 0),
    Element(id: 4, row: 3, column: 1),
    Element(id: 5, row: 5, column: 1)
])

let onePiece = Piece(id: "onePiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 0),
    Element(id: 4, row: 4, column: 0),
    Element(id: 5, row: 6, column: 0)
])

let longPiece = Piece(id: "longPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 4, column: 0),
    Element(id: 4, row: 6, column: 0),
    Element(id: 5, row: 7, column: 1)
])

let lampPiece = Piece(id: "lampPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: -1),
    Element(id: 3, row: 3, column: -1),
    Element(id: 4, row: 4, column: -2),
    Element(id: 5, row: 5, column: -1)
])

let spoonPiece = Piece(id: "spponPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: 1),
    Element(id: 4, row: 5, column: 1),
    Element(id: 5, row: 7, column: 1)
])

let chairPiece = Piece(id: "chairPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: 1),
    Element(id: 4, row: 4, column: 0),
    Element(id: 5, row: 5, column: 1)
])

let bookPiece = Piece(id: "bookPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 4, column: 0),
    Element(id: 4, row: 5, column: -1),
    Element(id: 5, row: 6, column: -2)
])

let bowlPiece = Piece(id: "bowlPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: 1),
    Element(id: 4, row: 2, column: 2),
    Element(id: 5, row: 4, column: 2)
])

let macPiece = Piece(id: "macPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 3, column: -1),
    Element(id: 4, row: 4, column: 0),
    Element(id: 5, row: 5, column: 1)
])

let oilPiece = Piece(id: "oilPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 1, column: 1),
    Element(id: 3, row: 2, column: 2),
    Element(id: 4, row: 3, column: 1),
    Element(id: 5, row: 5, column: 1)
])

let armPiece = Piece(id: "armPiece", elements: [
    Element(id: 1, row: 0, column: 0),
    Element(id: 2, row: 2, column: 0),
    Element(id: 3, row: 1, column: 1),
    Element(id: 4, row: 0, column: 2),
    Element(id: 5, row: 1, column: 3)
])
