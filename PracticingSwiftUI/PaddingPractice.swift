//
//  PaddingPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct PaddingPractice: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text( "Hello, World!")
            //.background(Color.yellow)
            //.padding()     // be default adds extra space around all the four edges
            // .padding(.all, 10)
            // .padding(.all, 10)
            //.padding(.leading, 20)  // we can stack padding, now after this leading we have a padding of 30 px.
            //            .background(
            //                Color.blue
            //            )
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("This is some random text about the things we are practically learning on SwiftUI using some youtube videos.")
            
                .background(
                    
                )
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color(Color.white)
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x:0 ,
                    y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingPractice()
}
