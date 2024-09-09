//
//  ExtractSubviews.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct ExtractSubviews: View {
    
    var body: some View {
        ZStack{
            // background layer
            Color.black
                .ignoresSafeArea(.all)
            
            // content layer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemView(title: "Apples", count: 10, color: .red)
            ItemView(title: "Oranges", count: 15, color: .orange)
            ItemView(title: "Grapes", count: 20, color: .green)
        }
    }
    
}

#Preview {
    ExtractSubviews()
}

// here we have extracted the view since the data can be changed so we have extracted in a separate view but in the previous example where we extracted function and variable for the content layer there data was not changeable.
struct ItemView: View {
    @State var title: String
    @State var count: Int
    @State var color: Color
    var body: some View {
        VStack {
            Text("\(count)")
                .bold()
            Text(title)
                .bold()
        }
        .padding()
        .padding(.horizontal)
        .background(
            color
        )
        .cornerRadius(10)
    }
}
