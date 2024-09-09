//
//  AnimationTiming.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10
    
    var body: some View {
        
        VStack {
            
            Button("Button") {
                isAnimating.toggle()
            }
            
            // all ends at the same time...
            RoundedRectangle(cornerRadius: 20)  // same speed
                .frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(.spring, value: isAnimating)   // the most natural
            
            // another way of using spring animation
                .animation(
                    .spring(
                        response: 2.0,       // spring animation will take this much time
                        // ideal value lesser maybe 0.3-0.5
                        dampingFraction: 0.3,    // lesser the value more the bounce back animation  ideal value => 0.7
                        blendDuration: 1.0),     //no idea what is this.
                    value: isAnimating
                )
                //.animation(.linear(duration: timing), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)   // slow first and ends  fast    // when something comes to the screen
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)  // slow fast and then ends slow
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)   // fast and then ends slow   // when something leave the screen
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimating)
        }
        
    }
}

#Preview {
    AnimationTiming()
}
