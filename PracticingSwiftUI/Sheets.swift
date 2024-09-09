//
//  Sheets.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct Sheets: View {
    @State var showSheet = false
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(.green)
                    .padding()
                    .font(.headline)
                    .background(
                        Color.white
                    )
                    .cornerRadius(10)
            })
            
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//                // DO NOT ADD conditional logic here...
//                // e.g. if cond1 sheet1 else sheet2
//                // THIS IS HIGHLY not recommended..
            // There are other ways to do that...
//            })
            
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
                // DO NOT ADD conditional logic here...
                // e.g. if cond1 sheet1 else sheet2
                // THIS IS HIGHLY not recommended..
                // There are other ways to do that...


            })
        }
        
    }
}

#Preview {
    Sheets()
}


struct SecondScreen: View {
   // @Binding var showSheet: Bool   // wrong way of doing it as it is not dependent on state or any other view, on click of cross it should dismiss itself.
 
    // memorise the way of doing it...
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
    
}


// Sheet is a transition from one scren to another. it is a popup

// There has to be one sheet in one view hierarchy do not add more than 1 sheet.
// DO NOT ADD conditional logic inside content as we might run into errors because of that.
