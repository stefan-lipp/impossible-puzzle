//
//  PuzzleApp.swift
//  ImpossiblePuzzle
//
//  Created by Stefan Lipp on 13.01.25.
//

import SwiftUI

@main
struct PuzzleApp: App {
    
    @StateObject var viewModel = PuzzleViewModel()
    
    var body: some Scene {
        WindowGroup {
            PuzzleView(viewModel: viewModel)
        }
    }
}
