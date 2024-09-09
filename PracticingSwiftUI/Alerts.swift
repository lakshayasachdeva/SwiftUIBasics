//
//  Alerts.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct Alerts: View {
    @State var showAlert = false
    var body: some View {
        Button("Tap here") {
            showAlert.toggle()
        }
        
        .alert("Title", isPresented: $showAlert) {
            Button(role: .destructive) {   // role => destructive it will give red color
                
            } label: {
                Text("Dismiss")
            }
            
            Button() {    // without any role... by default tint color which is blue
                
            } label: {
                Text("Retry")
            }


        
        } message: {
            Text("Are you sure you want to leave?")
        }
    }
}

#Preview {
    Alerts()
}


// old way of showing alert has been deprecated...
// limited to add only 2 buttons if we want to add more then we should use Action sheet.
// Action sheet comes from bottom whereas alert comes from top

