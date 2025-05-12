//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Zoltan Vegh on 12/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 10
    
    var body: some View {
        VStack {
            Text("Current value: \(value)")
            
            Button("Increment") {
                value += 1
            }
            
            Button("Decrement") {
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction{direction in
            switch direction {
            case .increment:
                self.value += 1
            case .decrement:
                self.value -= 1
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    ContentView()
}
