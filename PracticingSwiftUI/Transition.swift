//
//  Transition.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct Transition: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    withAnimation(.spring) {    // looks quite smooth and natural. insteadd of others like .easeInOut etc
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            // Here it is already there on the screen
            
            //            RoundedRectangle(cornerRadius: 40)
            //                .frame(height: UIScreen.main.bounds.height * 0.5)
            //                .opacity(showView ? 1  : 0)   // even though opacity will be zero when showView = false it will still be there in the view hierarchy it's just not coming on the screen....
            //                .animation(.easeInOut, value: showView)
            
            
            // it will be add up on the view only when showView will be true
            // so here we will use .transition instead of .opacity
            if showView {
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                   // .transition(.move(edge: .bottom))     // edge is w.r.t to the view we are moving. e.g. rounded rectangle in this case
                // this appear as if view is coming from the bottom
                
                /*
                 .leading => from left
                 .trailing => from right
                 .top => from top
                 .bottom => from bottom
                 */
                
        
                // Case where we want to show view w.r.t to opacity
                   // .transition(.opacity)
                
                // w.r.t to scale...
                   // .transition(.scale)

                // if we want different transition means we want different for adding and different when we remove
                
//                    .transition(
//                        .asymmetric(
//                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .bottom)
//                        )
//                    )
                
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: .opacity.animation(.easeInOut)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
        
    }
}

#Preview {
    Transition()
}


// The main difference between animation and transition is that animation we use for the ojects which are there on the screen.
// Transition are used for objects which are not there in the view hierarchy but we are adding them or being added to the view hierarchy

