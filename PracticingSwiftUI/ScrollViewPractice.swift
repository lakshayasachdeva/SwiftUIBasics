//
//  ScrollViewPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
        
        // Embedded ScrollView
        
        ScrollView{
            //VStack(spacing: 20) {    // It loads all the data at once; even if it is not needed.....
            LazyVStack(spacing: 100) {    // It loads all the data when it is required... lazily loads the data (recommended for the large data...

                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
//                        HStack{    // same as LazyVStack and VStack.
                        LazyHStack{
                            ForEach(0..<200) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewPractice()
}
