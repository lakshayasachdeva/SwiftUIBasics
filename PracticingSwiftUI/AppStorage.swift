//
//  AppStorage.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct AppStorageDemo: View {
   // @State var currUsername:String?
    
    @AppStorage("name") var currUsername:String?
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(currUsername ?? "Add name here")
            
            Button("Save".uppercased()) {
                currUsername = "Lakshaya"
            }
        })
    }
}

#Preview {
    AppStorageDemo()
}


// AppStorage are UserDefaults only under the hood
// With UserDefaults we need to save the data and then fetch the data
// Whereas @AppStorage does it for us without writing fetching and saving code explicitly
