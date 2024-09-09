//
//  Stepper.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct StepperDemo: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement:CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100+widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                incrementWidth(amnt: 10)
            } onDecrement: {
                // decrement
                incrementWidth(amnt: -10)

            } onEditingChanged: { status in
                
            }
        }
    }
    
    func incrementWidth(amnt:CGFloat) {
        withAnimation {
            widthIncrement += amnt
        }
    }
    
    
}

#Preview {
    StepperDemo()
}



// Where user have to increment or decrement value
