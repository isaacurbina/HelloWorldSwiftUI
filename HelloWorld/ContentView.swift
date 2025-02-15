//
//  ContentView.swift
//  HelloWorld
//
//  Created by Isaac Urbina on 2/12/25.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - variables
	private let imageUrl : String = "https://credo.academy/credo-academy@3x.png"
	
	
	// MARK: - body
	
    var body: some View {
        VStack {
			// text
			Text("iOS")
				.font(.system(size: 180))
				.fontWeight(.black)
				.foregroundStyle(.teal.gradient)
			
			// link
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
			
			// image
//			AsyncImage(url: URL(string: imageUrl), scale: 4.0) { image in
//				image.imageModifier()
//					
//			} placeholder: {
//				Image(systemName: "photo.circle.fill").iconModifier() 
//					
//			}
//			.padding(40)
			
//			if #available(iOS 15.0, *) {
//				AsyncImage(url: URL(string: imageUrl), scale: 2.0) { phase in
//					// SUCCESS: the image successfully loaded.
//					// FAILURE: the image failed to load with an error
//					// EMPTY: no image is loaded
//					
//					if let image = phase.image {
//						image.imageModifier()
//					} else if phase.error != nil {
//						Image(systemName: "ant.circle.fill").iconModifier()
//					} else {
//						Image(systemName: "photo.circle.fill").iconModifier()
//					}
//					
//				} placeholder: {
//					Image(systemName: "photo.circle.fill").iconModifier()
//				}
//				.padding(40)
//			} else {
//				// Fallback on earlier versions
//			}
			AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
				switch phase {
				case .success(let image) :
					image.imageModifier()
						//.transition(.move(edge: .bottom))
						.transition(.slide)
				case .failure(_):
					Image(systemName: "ant.circle.fill").iconModifier()
				case .empty:
					Image(systemName: "photo.circle.fill").iconModifier()
				@unknown default:
					ProgressView()
				}}
        }
        .padding()
	}
}


// MARK: - extensions

extension Image {
	
	func imageModifier() -> some View {
		self
			.resizable()
			.scaledToFill()
	}
	
	func iconModifier() -> some View {
		self
			.resizable()
			.scaledToFill()
			.frame( maxWidth: 120)
			.foregroundColor(.purple)
			.opacity(0.5)
	}
}


// MARK: - preview

#Preview {
    ContentView()
}
