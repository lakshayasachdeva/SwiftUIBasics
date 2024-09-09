//
//  ResizableSheet.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 06/09/24.
//

import SwiftUI

struct ResizableSheetDemo: View {
    @State var showSheet = false
    @State var detent : PresentationDetent = .large
    
    var body: some View {
        
        Button("Tap me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detent: $detent)
            // if we add more than one then we can drag between them
                //.presentationDetents([.medium, .large])
            
            // size => percentage of the screen
            // safer option than giving static height
               // .presentationDetents([.fraction(0.1), .medium, .large])
               // .presentationDetents([.height(300)])
            
            // to switch between detens programmatically..
                .presentationDetents([.medium, .large], selection: $detent)
            
            // we can set the drag indicator visibility also.
                .presentationDragIndicator(.automatic)
            // user will not be able to dismiss on drag
                .interactiveDismissDisabled()
        })
    }
}

struct MyNextView:View {
    @Binding var detent : PresentationDetent
    var body: some View {
        
        Text("Second screen")
        
        Button("Medium") {
            detent = .medium
        }
        
        Button("Large") {
            detent = .large
        }
        
        //this will not work since it is not being passed in detents.
        // in order to make it work it should be added to that detent array.
        Button("Small") {
            detent = .fraction(0.3)
        }
    }
}

#Preview {
    ResizableSheetDemo()
}
