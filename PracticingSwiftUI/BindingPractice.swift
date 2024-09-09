//
//  BindingPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct BindingPractice: View {
    @State var bgColor = Color.red
    
    var body: some View {
        ZStack {
            // bg layer
            bgColor
                .ignoresSafeArea(.all)
            
            // content layer
            ButtonView(bgColor: $bgColor)
        }
    }
}

#Preview {
    BindingPractice()
}



// Binding means state is declared somewhere else but you're using it to change
// 2-way connection
// State - is for local changes; declared locally and state changes locally.


// Now, child view doesn't have bgColor; which is defined in parent view.
// Case here is same like when you want to do changes in the parent view on clicking something in child view.
// we used to do it with the help of delegate in UIKit
struct ButtonView: View {
    
    @Binding var bgColor: Color     // we can change the name but good practice to have it same as parent
    // since it is defined in parent view and referenced in child view...
    
    @State var btnColor = Color.black     // referenced within the child view & that's why it is @State type..
    
    var body: some View {
        Button(action: {
            bgColor = .orange
            btnColor = .yellow
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .bold()
                .padding()
                .background(
                    btnColor
                )
                .cornerRadius(10)
        })
    }
}
