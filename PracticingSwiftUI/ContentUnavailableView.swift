//
//  ContentUnavailableView.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 09/09/24.
//

import SwiftUI

struct ContentUnavailableViewDemo: View {
    var body: some View {
        
        //ContentUnavailableView("No Internet connection", systemImage: "wifi.slash", description: Text("Please connect to the internet and try again."))
        
        // default
       // ContentUnavailableView.search
        
        ContentUnavailableView.search(text: "searched_text_goes_here")
    }
}

#Preview {
    ContentUnavailableViewDemo()
}
