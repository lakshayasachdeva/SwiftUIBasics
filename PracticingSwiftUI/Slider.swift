//
//  Slider.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct SliderDemo: View {
    @State var sliderValue:Double = 3
    @State var color:Color = .red
    
    var body: some View {
        VStack {
            Text("Reading:")
            Text(String(format: "%.0f", sliderValue))
                .foregroundColor(color)
//            Slider(value: $sliderValue)
//                .tint(.red)
            
            //Slider(value: $sliderValue, in: 0...100)
            
//            Slider(value: $sliderValue, in: 1...5, step: 1.0) {
//                
//            }
            
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0) {
                    Text("Title")
                } minimumValueLabel: {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundStyle(.indigo)
                } maximumValueLabel: {
                    Text("5")
                        .font(.headline)
                        .foregroundStyle(.mint)
                } onEditingChanged: { status in
                    color = .green
                }
                

        }
        .padding()
        
    }
}

#Preview {
    SliderDemo()
}
