//
//  SpacerPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct SpacerPractice: View {
    var body: some View {
        HStack{
            Spacer()
                .frame(height: 2)
                .background(Color.black)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Spacer()
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Spacer()
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Spacer()                                // takes the rest of the space
        }
    }
}

#Preview {
    SpacerPractice()
}


// Spacer has by default minLength => 8,10
// if we want to give atleast that much distance no matter what then we can set it if we want they shouldn't take space when views grow then we will give minLength
//Spacer(minLength: 0
