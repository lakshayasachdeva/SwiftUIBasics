//
//  List.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 01/09/24.
//

import SwiftUI

struct ListPractice: View {
    @State var fruits = [ "Apple","Orange","Banana","Peach"]
    
    @State var veggies = [ "Tomato","Potato","Carrot","Beans"]

    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.purple)
                    .padding(.vertical)
                    
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .listStyle(.sidebar)
            .deleteDisabled(false)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            
            }
            .tint(.red)    // didn't change the color of section header, deprecated method .accentcolor used to change section color as well
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset:Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
}

#Preview {
    ListPractice()
}
