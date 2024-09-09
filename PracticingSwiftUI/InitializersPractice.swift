//
//  InitializersPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct InitializersPractice: View {
    let backgroundColor: Color
    let textToShow: String
    let count: Int

    // be default ios gives initializers for the properties
    // but if we want to create a custom we can create
    
    // ** DEFAULT **
//    init(backgroundColor: Color, textToShow: String, count: Int) {
//        self.backgroundColor = backgroundColor
//        self.textToShow = textToShow
//        self.count = count
//    }
    
    // ** CUSTOM INITIALIZER **
    
    init(fruit: Fruit, count: Int) {
        if fruit == .apple {
            textToShow = "Apple"
            self.backgroundColor = .red
        } else if fruit == .orange {
            textToShow = "Orange"
            self.backgroundColor = .orange
        } else {
            textToShow = "Banana"
            self.backgroundColor = .yellow
        }
        self.count = count
    }
    
    
    enum Fruit {
        case apple
        case orange
        case kiwi
        case grapes
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .underline()
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text(textToShow)
                .foregroundStyle(Color.white)
        }
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

#Preview {
    
    HStack {
        InitializersPractice(
            fruit: .apple,
            count: 20
        )
        
        InitializersPractice(
            fruit: .orange,
            count: 10
        )
    }
}
