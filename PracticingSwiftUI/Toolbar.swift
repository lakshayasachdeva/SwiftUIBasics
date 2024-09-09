//
//  Toolbar.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct ToolbarDemo: View {
    @State var tfText:String = ""
    @State var paths:[String] = []
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.purple
                    .edgesIgnoringSafeArea(.all)
            
            }
            .navigationTitle("Toolbar")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "gear")
                        .background(
                            Color.red
                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .principal) {   // middle of the navigation view
                    Image(systemName: "gear")
                }
                
                
            })
            .toolbar(.hidden, for: .bottomBar)  // to hide toolbar
            //.toolbarBackground(.hidden, for: .navigationBar) // to change toolbar backgorund color
            .toolbarColorScheme(.dark, for: .navigationBar)
            // to set the color scheme of the toolbar even if you're in light mode you can set to dark..
            
            // this will show navigation bar on screen..
            .navigationBarTitleDisplayMode(.inline)
            
            // to show menu dropdown in navigation bar...
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                
                Button("Screen 2") {
                    paths.append("Screen 2")

                }
                
                Button("Screen 3") {
                    paths.append("Screen 3")

                }
            }
        }
        .navigationDestination(for: String.self) { value in
            Text("New screen with \(value)")
        }
    }
}

#Preview {
    ToolbarDemo()
}
