//
//  FieldView.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//
import SwiftUI

struct FieldView: View {
    
    let field: Field
    
    var body: some View {
        Triangle()
            .frame(width: 70, height: 70)
            .foregroundStyle(field.isFilled ? .brown : .secondary)
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}
