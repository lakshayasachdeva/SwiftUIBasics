//
//  ListSwipeActions.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct ListSwipeActionsDemo: View {
    @State var fruits = [ "Apple","Orange","Banana","Peach"]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
            //.onDelete(perform: delete)
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button(action: {
                    
                }, label: {
                    Text("Archive")
                })
                .tint(.gray)
                
                Button(action: {
                    
                }, label: {
                    Text("Save")
                })
                .tint(.green)
                
                Button(action: {
                    
                }, label: {
                    Text("Junk")
                })
                .tint(.red)
            }
            
            .swipeActions(edge: .leading, allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                Button(action: {
                    
                }, label: {
                    Text("Share")
                })
                .tint(.yellow)
            }
        }
    }
    
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

#Preview {
    ListSwipeActionsDemo()
}
