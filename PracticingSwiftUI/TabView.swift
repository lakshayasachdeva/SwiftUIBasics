//
//  TabView.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct TabViewDemo: View {
    @State var selectedTab: Int = 1
    let icons = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
//        TabView(selection: $selectedTab,
//                content:  {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            BrowseView()
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        })
        
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .frame(height: 300)
        .tabViewStyle(.page)
        .background(
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
        )
    }
}

#Preview {
    TabViewDemo()
}


struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.green
            VStack {
                Text("Home tab")
                    .foregroundStyle(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .padding()
                        .padding(.horizontal)
                        .background(
                            .white
                        )
                        .cornerRadius(10)
                })
                .foregroundColor(.black)
                .font(.headline)
            }
        }
    }
}

struct BrowseView: View {
    var body: some View {
        ZStack {
            Color.indigo
            Text("Browse tab")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.purple
            Text("Profile tab")
        }
    }
}
