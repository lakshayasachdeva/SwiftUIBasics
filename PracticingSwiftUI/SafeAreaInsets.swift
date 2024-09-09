//
//  SafeAreaInsets.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 06/09/24.
//

import SwiftUI

struct SafeAreaInsetsDemo: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height:300)
            }
            .navigationTitle("SafeAreaInset Demo")
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//                , alignment: .bottom
//            )
            
            // Above can be done using SafeAreaInsets
            // useful when we want to show overlay floating buttons...
            // this can be customised to use as a pinned hear just like we get in VList.
            .safeAreaInset(edge: .bottom, alignment: .leading, spacing: nil) {
                Text("Hi")
                    .padding()
                    .background(.yellow)
                    .clipShape(Circle())
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    SafeAreaInsetsDemo()
}
