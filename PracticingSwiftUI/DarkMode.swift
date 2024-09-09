//
//  DarkMode.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct DarkModeDemo: View {
    
    @Environment(\.colorScheme) var colorScheme   // to check what is the current colorscheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing:20, content: {
                    Text("this color is Primary")   // adaptive
                        .foregroundStyle(.primary)
                    
                    Text("this color is Secondary")
                        .foregroundStyle(.secondary)   // adaptive
                    
                    Text("this color is Black")   // not adaptive to modes
                        .foregroundStyle(.black)
                    
                    Text("this color is White")   // not adaptive to modes
                        .foregroundStyle(.white)
                    
                    Text("this color is Red")   // adaptable by default on both modes as it is red.. keep these things in mind
                        .foregroundStyle(.red)
                    
                    
                    Text("this color is globally adaptive")   // adaptable by default on both modes as it is red.. keep these things in mind
                        .foregroundStyle(Color("AdaptiveColor", bundle: nil))

                    
                    Text("this color is locally adaptive")   // adaptable by default on both modes as it is red.. keep these things in mind
                        .foregroundStyle(colorScheme == .dark ? .yellow : .green)


                })
                
            }
            
            .navigationTitle("Dark mode demo")
        }
    }
}

#Preview {
    Group {
        DarkModeDemo()
            .preferredColorScheme(.dark)

    }
    
}
