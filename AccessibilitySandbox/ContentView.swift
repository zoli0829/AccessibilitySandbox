//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Zoltan Vegh on 12/05/2025.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        Button("John Fitzgerald Kennedy") {
            print("Button tapped")
        }
        .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
    }
}

#Preview {
    ContentView()
}
