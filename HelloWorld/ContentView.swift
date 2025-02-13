//
//  ContentView.swift
//  HelloWorld
//
//  Created by Isaac Urbina on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "face.smiling")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Congratulations!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
