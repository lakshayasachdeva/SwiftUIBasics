//
//  ColorsPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct ColorsPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            //.fill(.red) // by default colors given by ios // basic colors
        
            .fill(
               // Color.primary
            // Need to find out how to use color literal not working on this xcode
                //Color(uiColor: UIColor.secondarySystemBackground) // by default color given by UIColor
                // UIColor is for UIKit
                // Color is for SwiftUI
                // this is how we can use it inside our SwiftUI as it comes with so many predefined default colors in UIKit for example above color which comes handy in so many situation.
                
                Color("CustomColor", bundle: nil)
                // we have different color for different modes inside Assets.xcassets file..
                 )
        
            //.shadow(radius: 10)  // default way of adding shadow
            .shadow(color: Color("CustomColor"), radius: 10, x: 0, y:0)
        // x => to move shadow left/right
        // y => to move shadow up/down
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ColorsPractice()
}


// Color() can be used directly as view
// Use case => if we want to set background color of the stack then we don't have to take another view or any other component we can simply write Color() inside ZStack.
