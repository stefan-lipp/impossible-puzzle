//
//  ElementView.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

struct ElementView: View {
    
    let element: Element
    
    var body: some View {
        Triangle()
            .frame(width: 70, height: 70)
            .foregroundStyle(.blue)
    }
}
