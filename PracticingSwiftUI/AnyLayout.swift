//
//  AnyLayout.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 06/09/24.
//

import SwiftUI

struct AnyLayoutDemo: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Horizontal size class \(horizontalSizeClass.debugDescription)")
            
            Text("Vertical size class \(verticalSizeClass.debugDescription)")
        }
        
        // Better way of doing it.... using AnyLayout..
        
        let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
        
        layout {
            Text("Alpha")
            Text("Beta")
            Text("Gama")
            
        }
        
        // way of doing it without AnyLayout above one is preferred as screen could be big we don't have to right twice..
        
        //        if horizontalSizeClass == .compact {
        //            VStack {
        //                Text("Alpha")
        //                Text("Beta")
        //                Text("Gama")
        //            }
        //        } else {   // iphone 14, 15 pro max, bigger sizes phone...
        //            HStack {
        //                Text("Alpha")
        //                Text("Beta")
        //                Text("Gama")
        //            }
        //        }
    }
}

#Preview {
    AnyLayoutDemo()
}
