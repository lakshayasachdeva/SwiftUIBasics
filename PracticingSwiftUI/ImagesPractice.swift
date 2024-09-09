//
//  ImagesPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct ImagesPractice: View {
    var body: some View {
        Image("img2", bundle: nil)
            //.renderingMode(.template)  // to set the color on the image. has to be before resizable.
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit() // has to be before setting frame otherwise no impact will be there..
            .frame(width: 300, height: 400)
            //.clipped()
            //.cornerRadius(30) // this by default clips the image. we can see without clip image was going beyond frame i.e. it was not obeying the size of the frame given.
            .foregroundColor(.red )
            .clipShape(
                Circle()
                //Rectangle()
                //RoundedRectangle(cornerRadius: 25)
                
            ) // to make it circular
        
        
        
            
    }
}

#Preview {
    ImagesPractice()
}
