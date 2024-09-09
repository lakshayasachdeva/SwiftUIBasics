//
//  ColorPicker.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct ColorPickerDemo: View {
    @State var bgColor:Color = .red
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea(.all)
            
            ColorPicker(
                "Select a color",
                selection: $bgColor,
                supportsOpacity: true
                    
            )
            .padding()
            .foregroundColor(.white)
            .background(
                Color.black
            )
            .cornerRadius(10)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerDemo()
}
