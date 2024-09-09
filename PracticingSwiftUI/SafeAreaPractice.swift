//
//  SafeAreaPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct SafeAreaPractice: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .ignoresSafeArea(.all)   // to ignore we can use this..
//
//            VStack {     // by default swiftui views makes themselves within the safe area layout..
//                Text("Safe area layout")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
        
        
        
        // we can see in below example that scrollview is within safe area layout it's content never goes beyond that but the thing on scroll it goes.
        
        //never call ignores safe area on scrollview
        // that will cause problem, we can do that directly on background since it also takes a view
        // Second method to use Zstack
        // first item should background view and apply on that
        // Best approach is below where we have called directly on scrollview's background.
        
        
        ScrollView {
            VStack {
                Text("Some title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<20) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(width: 200, height: 200)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(edges: .all)     // best way to set color end to end. instead of setting on scrollview; if we do that then SomeTitle text will be stick to the top and cause problems.
        )
    }
}

#Preview {
    SafeAreaPractice()
}
