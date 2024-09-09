//
//  ButtonsPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct ButtonPractice: View {
    @State var title = "Default Title"   // whenever we change title view should re-render itself.. for this we use @State.
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("\(title)")
            
            // Type-1
            Button("Button 1") {
                self.title = "Clicked by 1st button"
            }
            
            
            // Type-2
            Button(action: {
                self.title = "Clicked by 2nd button"
            }, label: {
                
                Text("Button 2")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            // Type - 3
            Button(action: {
                self.title = "Clicked by 3rd button"
            }, label: {
                Circle()
                    .fill(
                        Color.white
                    )
                    .frame(width: 80)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    )
            })
            
            // Type - 4
            Button(action: {
                self.title = "Clicked by 4th button"
            }, label: {
                
                Text("Button 4")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            
        }
        
        
    }
}

#Preview {
    ButtonPractice()
}
