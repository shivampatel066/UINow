//
//  ContentView.swift
//  UINowDemo
//
//  Created by Shivam Patel on 22/02/25.
//

import SwiftUI
import UINow

struct UILabelView: UIViewRepresentable {
    let label: UILabel
    
    init(_ label: UILabel) {
        self.label = label
    }
    
    func makeUIView(context: Context) -> UILabel {
        label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            UILabelView(UIM.Sudoku.Home.titleLabel(
                title: "Sudoku Now"
            ))
            UILabelView(UIM.Sudoku.Home.scoreLabel(
                title: "0"
            ))
            UILabelView(UIM.Sudoku.Home.bestTimeLabel(
                title: "00:00"
            ))
            UILabelView(UIM.Sudoku.Home.totalGamesPlayedLabel(
                title: "0"
            ))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
