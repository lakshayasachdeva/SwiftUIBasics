//
//  ViewThatFits.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 09/09/24.
//

import SwiftUI

struct ViewThatFitsDemo: View {
    var body: some View {
        ZStack {
            
            Color.red
                .ignoresSafeArea(.all)
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user")
                Text("This is some text that I would like to display")
                Text("This is some text.")
            }
            
//            Text("This is some text that I would like to display to the user")
//                .lineLimit(1)
//                .minimumScaleFactor(0.3)
            
        }
        .frame(height: 300)
        //.padding()
        .padding(60)

    }
}

#Preview {
    ViewThatFitsDemo()
}

/* It basically takes the variants we want to show when size is less
    In above example if it will check if first text can get fit then it will first otherwise move to 2 or move to 3 depending on the size available
 
 It always tries to fit in the 1 line..
 */
