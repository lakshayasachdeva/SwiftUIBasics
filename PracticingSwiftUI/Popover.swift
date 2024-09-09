//
//  Popover.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

// Multiple ways to achieve a same effect
struct PopoverDemo: View {
    @State var showNewScreen = false
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                Button("Button") {
                    // METHOD - 1 & 3
                    //showNewScreen.toggle()
                    
                    // METHOD - 2
                    withAnimation(.spring) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                .bold()
                Spacer()
            }
            
            // METHOD - 1  SHEET
            // they've default animation we cannot customise them
            // and also we cannot change much things here...
            //        .sheet(isPresented: $showNewScreen, content: {
            //            NewScreen()
            //        })
            
            
            
            // METHOD - 2   TRANSITION   // try to use this... most flexible and dynamic
            // we can set animation and transition accordingly much more flexiblity there..
            // have to kept inside ZStack to make transition while dismissing otherwise it will dismiss abruptly without showing any transition.
                    ZStack {
                        if showNewScreen {
                            NewScreen(showNewScreen: $showNewScreen)
                                .transition(.move(edge: .bottom))
                        }
                    }
                    .zIndex(2.0)
            
            
            
            // METHOD - 3  ANIMATION OFFSET
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y:showNewScreen ? 0: UIScreen.main.bounds.height)
//                .animation(.spring, value: showNewScreen)
        }
    }
}

struct NewScreen : View {
    
   // @Environment(\.dismiss) var dismiss
    
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button(action: {
               // dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .padding()
            })
        }
    }
}

#Preview {
    PopoverDemo()
}
