//
//  ContentView.swift
//  UINowDemo
//
//  Created by Shivam Patel on 22/02/25.
//

import SwiftUI
import UINow

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(printHello())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
