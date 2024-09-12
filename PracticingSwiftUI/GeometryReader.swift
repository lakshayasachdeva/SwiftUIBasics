//
//  GeometryReader.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 12/09/24.
//

import SwiftUI

struct GeometryReaderDemo: View {
    var body: some View {
        // it is like a container
        GeometryReader{ proxy in
            
            VStack {
                Text("frame of the text is \(proxy.frame(in: .local))")
                Text("frame of the text is \(proxy.frame(in: .global))")
            }
            .foregroundStyle(.white)
            
//            Circle()
//                .fill(
//                    .yellow
//                )
//                .frame(height: 50)
//                .position(
//                    x: proxy.frame(in: .local).midX,
//                    y: proxy.frame(in: .local).midY
//                )
//            
//            Circle()
//                .fill(
//                    .yellow
//                )
//                .frame(height: 50)
//                .position(
//                    x: proxy.frame(in: .global).midX,
//                    y: proxy.frame(in: .global).midY
//                )
            
            
            
            Rectangle()
                .fill(
                    .purple
                )
                .frame(
                    height: proxy.size.height * 0.8
                )
            
            Rectangle()
                .fill(
                    .blue
                )
                .frame(
                    height: proxy.size.height * 0.2
                )
            
            
        }
        
    }
}

#Preview {
    GeometryReaderDemo()
}


/*
 It is also a view container but in this view aligns from the top left.
 It tries to take the all the space.
 
 advantage of using proxy instead of UIScreen is that when screen rotates proxy will behave identical, whereas same is not the case with UIScreen.main.bounds.size
 
 */

