//
//  Animations.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct Animations: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(.default) {
//                    isAnimated.toggle()    //anything affected by this variable isAnimated going to animate...
//                }
                
                // 2nd variation
                // .default.delay asks that make sure that it is Animation so append Animation
//                withAnimation(.default.delay(2.0)) {
//                    isAnimated.toggle()
//                }
                
                // it will repeat 5 times and each side will be counted as 1
//                withAnimation(.default.repeatCount(5, autoreverses: true)) {
//                    isAnimated.toggle()
//                }
                
//                withAnimation(.default.repeatForever()) {
//                    isAnimated.toggle()
//                }
                
                // This is the way of animating what all views are connected to isAnimated
                // but if we want to animate few or 1 of them not all then we have to apply directly on the object in this case RoundedRectangle using .animation
                
                isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))    // this has to be before .offset otherwise it will disturb the offset during rotation
                .offset(y: isAnimated ? 300 : 0)     // move the object by x and y given
                .animation(.default, value: isAnimated)     // when we want to animate only this particular rounded rectangle on changing the  isAnimated and not affect the other.
             
            Spacer()
        }
    }
}

#Preview {
    Animations()
}
