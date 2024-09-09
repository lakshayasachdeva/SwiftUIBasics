//
//  PopoverDemo.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 06/09/24.
//

import SwiftUI

struct NativePopoverDemo: View {
    @State private var showPopover = false
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            Button("Click me") {
                showPopover.toggle()
            }
            
            // by default same as sheet but we can set presentationCompactAdaption to make use of it
            // it appears on the view it is apply, if i apply it on ZStack it will not be visible
//            .popover(isPresented: $showPopover, content: {
//                Text("Hello, Lakshaya")
//                    .presentationCompactAdaptation(.popover)
//
//            })
            
            
            
            // to set the anchor
            // click anywhere it will be dismissed.
            .padding()
            .background(.yellow)
            
            .popover(
                isPresented: $showPopover,
              //  attachmentAnchor: .point(.topLeading),
               // attachmentAnchor: .point(.center),
                //attachmentAnchor: .point(.bottom),
                attachmentAnchor: .point(.top),
                content: {
                Text("Hello, Lakshaya")
                    .presentationCompactAdaptation(.popover)

            })
        }
    }
}

#Preview {
    NativePopoverDemo()
}
