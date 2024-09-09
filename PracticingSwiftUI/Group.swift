//
//  Group.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 06/09/24.
//

import SwiftUI

struct GroupDemo: View {
    var body: some View {
//        VStack(spacing:50) {
//            Text("1")
//            Text("2")
//            Text("3")
//
//        }
//        .foregroundColor(.red)
//        .font(.title)
        
        /*
         Problem - In above situation if we want to apply separate font and color to let's say last 2 items then we have to apply modifiers on each Text item which is like code duplication and not a scalable solution
         
         Second solution would be to create a new VStack and keep last 2 Text items inside it but that is not a good solution although it works
         
         So, here comes Group for it which doesn't add any alignment just stacks the elements for you so that you can apply modifiers to them
         */
        
        VStack(spacing:50) {
            Text("1")
            Group {
                Text("2")
                Text("3")
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
        .foregroundColor(.red)
        .font(.title)
    }
}

#Preview {
    GroupDemo()
}



// Same as stacks it is just that they don't add any alignment
// They group the items so that we can apply modifiers on all the items at once
