//
//  Badges.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct BadgesDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .badge(1)   // will not work
        // only works for list and tabview
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                    Text("Hello")
                }
                .badge(1)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                    Text("Hello")

                }
                .badge("NEW")

            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                    Text("Hello")

                }
                .badge(3)

        }
        
        
//        List {
//            Text("Hello1")
//                .badge(10)
//            Text("Hello2")
//                .badge("New")
//            Text("Hello3")
//                .badge("new item")
//            Text("Hello4")
//            Text("Hello5")
//
//        }
    }
}

#Preview {
    BadgesDemo()
}


/*
 Works only for List and Tabview
 tabview item color would be our accent color (default tint of the app)
 */
