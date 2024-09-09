//
//  StatePractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

// Whenever we want our view to re-render on property changes, we use state. It tells view that update yourself when there is a change in the value of the property.

struct StatePractice: View {
    
    @State var bgColor = Color.red
    @State var count = 1
    @State var btnClickText = "Nothing clicked"
    
    var body: some View {
        
        ZStack {
            bgColor
            
            VStack(spacing: 24) {
                
                Text(btnClickText)
                    .font(.title)
                    .bold()
                
                Text("Count - \(count)")
                    .bold()
                    .underline()
                    
                
                HStack {
                    
                    Button("BUTTON 1") {
                        bgColor = .blue
                        count += 1
                        btnClickText = "btn1 was clicked"
                    }
                    
                    Button("BUTTON 2") {
                        bgColor = .red
                        count += 1
                        btnClickText = "btn2 was clicked"
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StatePractice()
}


