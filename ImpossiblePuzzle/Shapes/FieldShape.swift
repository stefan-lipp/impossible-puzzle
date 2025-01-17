//
//  FieldShape.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct FieldShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.width / 2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.width / 4, y: rect.height / 7))
        path.addLine(to: CGPoint(x: rect.width / 4, y: rect.height / 7 * 3))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.height / 7 * 4))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.height / 7 * 6))
        path.addLine(to: CGPoint(x: rect.width / 4, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.width / 2, y: rect.height / 7 * 6))
        path.addLine(to: CGPoint(x: rect.width / 4 * 3, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.height / 7 * 6))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.height / 7 * 4))
        path.addLine(to: CGPoint(x: rect.width / 4 * 3, y: rect.height / 7 * 3))
        path.addLine(to: CGPoint(x: rect.width / 4 * 3, y: rect.height / 7))
        return path
    }
}
