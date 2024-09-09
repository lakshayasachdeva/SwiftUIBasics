//
//  NavigationView.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

// ***** DERPRECATED ****
struct NavigationViewPractice: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack { // Grouping all the elements inside a VStack
                    NavigationLink(destination: Text("Second screen")) {
                        Text("Second screen")   // we can pass in here a whole view, new screen, anything as part of view... it gives by default animation and support of navigation stack just like UIKit
                    }
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
            }
            .navigationTitle("Title")
            .navigationBarTitleDisplayMode(.large)
        }
        //Text("DEPRECATED")
    }
}



#Preview {
    NavigationViewPractice()
}


/*
 NavigationView => gives the ability to give navigation bar and navigation title and other related stuff
 We can use navigation link for segues only with Navigation View
 title and other properties of navigation view always be set inside the navigation view curly braces not outside.
 */
