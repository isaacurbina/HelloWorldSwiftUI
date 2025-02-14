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
            Link("Go to Apple",
				 destination: URL(string:"https://www.apple.com")!)
			Link("Call To Action",
				 destination: URL(string: "tel:1234567890")!)
			Link("Send an Email",
				 destination: URL(string: "mailto:swiftui@apple.com")!)
			.buttonStyle(.borderedProminent)
			.buttonBorderShape(.capsule)
			.controlSize(.large)
			.tint(.pink)
			Link("Credo Academy",
				 destination: URL(string: "https://credo.academy")!)
			.buttonStyle(.plain)
			.padding()
			.border(.primary, width: 2)
			Link(destination: URL(string: "https://www.apple.com")!) {
				HStack(spacing: 16) {
					Image(systemName: "apple.logo")
					Text("Apple Store")
				}
			}
			.font(.largeTitle)
			.foregroundStyle(.white)
			.padding()
			.padding(.horizontal)
			.background(
				Capsule().fill(.blue)
			)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
