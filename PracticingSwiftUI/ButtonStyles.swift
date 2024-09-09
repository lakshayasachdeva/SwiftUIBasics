//
//  ButtonStyles.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct ButtonStylesDemo: View {
    var body: some View {
        
        VStack {
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)   // added size to the label inside button
            // that's why not going end to end even though width is infinity.

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)


            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.small)

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
           // .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.buttonBorder)
            .controlSize(.mini)

        }
        .padding()
        
        
    }
}

#Preview {
    ButtonStylesDemo()
}
