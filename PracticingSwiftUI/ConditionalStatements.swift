//
//  ConditionalStatements.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct ConditionalStatements: View {
    @State var isCircleShown = false
    @State var isRectShown = false
    
    var body: some View {
        
        VStack {
            
            Button("Circle Button -  \(isCircleShown)") {
                isCircleShown.toggle()
            }
            
            Button("Rectangle Button -  \(isRectShown)") {
                isRectShown.toggle()
            }
            
            if isCircleShown {
                Circle()
                    .frame(width: 100)
            }
            
            if isRectShown {
                Rectangle()
                    .fill(.black)
                    .frame(width: 200, height: 100)
            }
            
            
            // AND operator, ternary operator => example
            if isCircleShown || isRectShown {
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        isCircleShown ? Color.red : Color.blue
                    )
                    .frame(width: 200, height: 150)
            }
            Spacer()
            
        }
    }
}

#Preview {
    ConditionalStatements()
}
