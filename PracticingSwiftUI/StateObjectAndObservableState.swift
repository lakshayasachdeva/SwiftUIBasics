//
//  StateObjectAndObservableState.swift.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct Fruit: Identifiable {
    let id: String = UUID().uuidString
    let name:String
    let count: Int
}

struct StateObjectAndObservableStateDemo: View {

//    @State var fruits: [Fruit] = []
    
    // observing observede object inside view...
    // Problem with observedObject is that if view reloads due to any reason then our viewmodel also gets reloaded which we don't want. Suppose you are calling an api to getFruits() and due to some reasons let's say due to animation or due to some other local state object of view; view gets reloaded then it will create the new object of view model
   // @ObservedObject var viewModel = FruitViewModel()     //
    
    
    // To maintain the state or persist the data we use @StateObject instead of @ObservedObject
    // underlying data should not be changing if view reloads..
    @StateObject var viewModel = FruitViewModel()     //

    
    /*
     @StateObject  => use this on creation/init, creating inside the view first time
     
     
     @ObservedObject => use this for subviews
      */
    
    
    
    var body: some View {
        NavigationView {
            List {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(viewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: viewModel.delete)
                }
               
            }
            .navigationTitle("Fruits")
//            .onAppear(perform: {
//                viewModel.getFruits()
//            })
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: RandomScreen(viewModel: viewModel)) {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                    
                }
            })
        }
    }
}

struct RandomScreen: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Go back")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                })
                
                ForEach(viewModel.fruits) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

#Preview {
    StateObjectAndObservableStateDemo()
}


// class is now observable after conforming to ObservableObject
class FruitViewModel: ObservableObject {
    @Published var fruits = [Fruit]()    // same thing @State but in class @Published, it publishes the new changes
    
    @Published var isLoading = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: DispatchWorkItem(block: {
            self.fruits.append(Fruit(name: "Apple", count: 10))
            self.fruits.append(Fruit(name: "Orange", count: 20))
            self.fruits.append(Fruit(name: "Banana", count: 12))
            self.fruits.append(Fruit(name: "Grapes", count: 40))
            self.fruits.append(Fruit(name: "Papaya", count: 2))
            self.isLoading = false
        }))
        
    }
    
    func delete(index:IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
}



// State used inside struct , inside view
