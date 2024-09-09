//
//  ContentView.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.title)
            Button("Submit") {
                print("some print statement")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
