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
        FieldShape()
            .frame(width: 50, height: 50)
            .foregroundStyle(foregroundColor)
    }
    
    private var foregroundColor: Color {
        switch field.type {
        case .outside: return .clear
        case .border: return .brown.opacity(0.7)
        case .inside: return .brown.opacity(field.isFilled ? 0.3 : 1)
        }
    }
}
