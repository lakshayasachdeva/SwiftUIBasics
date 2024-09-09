//
//  StacksPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct StacksPractice: View {
    var body: some View {
        // VStack = Vertical
        // HStack = Horizontal
        // ZStack = changes the z index (which is basically back to front)
        
//        VStack {    // by default comes up with default spacing
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        }
        
//        VStack(alignment: .center, spacing: 0, content: {    // nil takes  default spacing
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
        
        VStack(spacing: 50) {
            ZStack{
                Circle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
            }   // if things are complex go with ZStack.
            
//            Circle()
//                .frame(width: 100, height: 100)
//                .overlay(
//                    Text("1")
//                        .font(.largeTitle)
//                        .foregroundStyle(Color.white)
//                )
//            
            Text("1")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    
        // same way of doing thigs, if not complex then use above
        
    }
}

#Preview {
    StacksPractice()
}


// If we want to give foreground color to all the items of the stack same then we can simply assing foreground color to stack..
