//
//  ShapesPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct ShapesPractice: View {
    var body: some View {
//        Circle()
//        Ellipse()
        //Capsule(style: .continuous)
        //Rectangle()
        RoundedRectangle(cornerRadius: 50.0)
            //.fill(.orange) // to fill color
           // .foregroundColor(.red) // to fill color (another way)
            //.stroke()   // this removes the fill color and shows the outline/stoke only
            //.stroke(Color.red)
//            .stroke(.blue, lineWidth: 30)
            //.stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10])) // to set the styling on the stroke..
            .trim(from: 0.2, to: 1.0)   // to trim the shape
//            .stroke(.blue, lineWidth: 50)  // to give this effect trim has to be first modifier
            .frame(width: 300, height: 150)
            
    }
}

#Preview {
    ShapesPractice()
}
