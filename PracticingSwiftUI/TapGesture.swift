//
//  TapGesture.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct TapGestureDemo: View {
    @State var isSelected = false
    
    var body: some View {
        VStack(spacing:40, content: {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(
                    isSelected ? .red : .green
                )
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(
                        .white
                    )
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.blue
                    )
                    .cornerRadius(25)
            })
            
            
            // making it tappable
            // it is not a button
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundStyle(
                    .white
                )
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    Color.blue
                )
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            // double tap example
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        })
        .padding(40)
    }
}

#Preview {
    TapGestureDemo()
}


// Button = has highlighted state by default   (no feedback)
// tap gesture doesn't have that
//
