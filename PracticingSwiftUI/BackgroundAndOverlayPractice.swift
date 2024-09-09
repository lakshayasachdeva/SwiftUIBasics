//
//  BackgroundAndOverlayPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct BackgroundAndOverlayPractice: View {
    var body: some View {
        // 1. Background
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                //Color(Color.red)
//                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(
//                       // /*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/
//                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 200, height: 200)
//            
//            )
//            
//            .background(
//                Circle()
//                    .fill(
//                        //Color.red
//                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 240, height: 240)   // without this it will take same frame as above and nothing would show up
//            )
        
        //2. OVERLAYS
//        Circle()
//            .fill(Color.red)
//            .frame(width: 300, height: 300)
//            .overlay{
//                Circle()
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.white)
//                    .overlay(
//                        Text("5")
//                    )
//            }
        
        
        // 3. Mix of overlays and background with usage of other things and their alignment params
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50, alignment: .topLeading)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                
//                , alignment: .bottomTrailing
//            )
        
        // 4. Exercise to build notification view on image
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.blue)
            .background(
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("2")
                                    .font(.system(size: 18))
                                    .foregroundStyle(Color.black)
                            ),
                        alignment: .bottomTrailing    // overlays and background has their own alignment
                    )
            )
        
    }
}

#Preview {
    BackgroundAndOverlayPractice()
}
