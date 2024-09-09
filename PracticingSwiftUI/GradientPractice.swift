//
//  GradientPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct GradientPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color(.red)
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]
//                    ),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
                
//                RadialGradient(
//                    gradient:Gradient(
//                    colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]),
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 400
//                )
                AngularGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]),
                    center: .topLeading,
                    angle: .degrees(225)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientPractice()
}


// As we can see it has to be applied before frame. 
