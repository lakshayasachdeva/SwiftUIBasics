//
//  ExtractFunctions.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct ExtractFunctions: View {
    @State var bgColor: Color = .red
    var body: some View {
        ZStack{
            // background layer
            bgColor
                .ignoresSafeArea(.all)
            
            
            // content layer
            contentLayer
        }
    }
    
    
    // extracted the code from body
    // same signature as body..
    // no need to make them a separate view..
    var contentLayer: some View {
        VStack {
            Text ("Title")
                .font(.title)
                .bold()
            
            Button(action: {
               didTapOnBtn()
            }, label: {
                Text("TAP ME")
                    .foregroundStyle(.white)
                    .font(.caption)
                    .bold()
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color(.black)
                    )
                    .cornerRadius(8)
            })
        }
    }
    
    func didTapOnBtn() {
        self.bgColor = .yellow
    }
    
}

#Preview {
    ExtractFunctions()
}
