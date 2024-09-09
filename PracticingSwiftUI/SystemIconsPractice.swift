//
//  SystemIconsPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct SystemIconsPractice: View {
    var body: some View {
        Image(systemName: "heart.fill")
            
            .resizable()
            // this is important otherwise size will not be changed via frame.. size will be changed only via .font but if we want to give explicit frame then this has to be there...
           // .font(.largeTitle)  // dyamic with iphone sizes..
            //.font(.system(size: 200.0))
            .scaledToFit() // this is filling vertically but going outside the frame to clip it use .clipped()
            .foregroundColor(Color(#colorLiteral(red: 0.2647582889, green: 0.7538233995, blue: 1, alpha: 1)))
            .frame(width: 300, height: 300)
            //.clipped()   // it has to be after frame, it will not work before frame. obviously how would it know where to clip
        // no need to use .clipped if we are using scaledToFit() ; it fits itself acc to the frame given.
    }
}

#Preview {
    SystemIconsPractice()
}
