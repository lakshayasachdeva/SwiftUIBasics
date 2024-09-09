//
//  ContextMenu.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct ContextMenuDemo: View {
    @State var bgColor: Color = .red
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI demos")
                .font(.headline)
            Text("How to show Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(
            bgColor
                .cornerRadius(20)
        )
        .contextMenu(menuItems: {
            Button(action: {
                bgColor = .yellow
            }, label: {
                  Label("Like", systemImage: "flame.fill")  // Label is nothing but a HStack of text and image
            })
            
            Button(action: {
                bgColor = .green
            }, label: {
                Text("Comment")
            })
            
            Button(action: {
                bgColor = .indigo
            }, label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuDemo()
}


//Another way to show bunch of options in the form of buttons to user
// We cannot customize context menu much
