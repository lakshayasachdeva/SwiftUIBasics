//
//  NavigationStack.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct NavigationStackDemo: View {
    
    let fruits = ["Apple", "Banana", "Orange"
    ]
    @State private var stackPath: [String] = []
    var body: some View {
        
        // loads all the screens beforehand...
//        NavigationView {
//            ScrollView {
//                VStack {
//                    ForEach(0..<10) { x in
//                        NavigationLink("Click me \(x+1)") {
//                            Screen2(value: x)
//                        }
//                        .navigationTitle("Navigation View")
//                    }
//                }
//            }
//        }
        
        
        // lazily loads the screen..
        // we can see that by checking the console
        // there is no print statments...
        
        
    // if we want to load more than 1 screen then we will use stackpath, we have passed 3 itms hence it will create 3 screens but first move to the last i.e. Mango and if you click back it will go to Watermelon then to coconut. hardly used in apps unless we have this use case...
        NavigationStack(path: $stackPath) {
      //  NavigationStack {
            ScrollView{
                VStack {
                    
                    Button("Super segue") {
                        stackPath.append(contentsOf: ["Coconut", "Watermelon", "Mango"])
                    }
                    
                    
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    
                    
                    
                    ForEach(0..<10) { x in
//                        NavigationLink("Click me \(x+1)") {
//                            Screen2(value: x)
//                        }
                        
                        NavigationLink(value: x, label: {
                            Text("Go to screen no. - \(x)")
                        })
                    }
                }
            }
            .navigationTitle("Navigation View")
            .navigationDestination(for: Int.self, destination: { value in
                Screen2(value: value)
                
            })
            
            .navigationDestination(for: String.self, destination: { value in
                Text("Another screen with fruit - \(value)")
                
            })
        }
        
    }
}

#Preview {
    NavigationStackDemo()
}


struct Screen2: View {
    let value: Int
    init(value: Int) {
        self.value = value
        print("Init screen - \(value)")
    }
    var body: some View {
        Text("Screen 2")
    }
}

/*
 Navigation has been deprecated so better use NavigaitonStack instead...
 
 NavigationView loads all the screens beforehand... refer to above example...
 */
