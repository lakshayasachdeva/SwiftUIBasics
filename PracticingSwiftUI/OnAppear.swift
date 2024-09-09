//
//  OnAppear.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct OnAppearDemo: View {
    @State var myText : String = "This is the starting text"
    @State var count: Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear(perform: {
                                count += 1
                            })
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()+1, execute: DispatchWorkItem(block: {
                    onAppearOfScrollView()
                }))
            })
            .onDisappear(perform: {   // used for cleaning up things...
                myText = "Scrollview disappear.... "  // never gonna see...
                
            })
            .navigationTitle("On Appear demo: \(count)")
        }
    }
    
    func onAppearOfScrollView() {
        myText = "Scroll view appears"
    }
}

#Preview {
    OnAppearDemo()
}
