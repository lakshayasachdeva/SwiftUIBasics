//
//  ControlGroupMenuDemo.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 09/09/24.
//

import SwiftUI

struct ControlGroupMenuDemo: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Menu("Menu") {
            
            ControlGroup {
                Button("1") {
                    
                }
                Button("2") {
                    
                }
                Menu("How're you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                    Button("Ok") {
                        
                    }
                }
            }
            Button("4") {
                
            }
            
            // Nested menu
            Menu("Five") {
                Button("Hi") {
                    
                }
                
                Button("Hello") {
                    
                }
                
                Menu("How're you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                    Button("Ok") {
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    ControlGroupMenuDemo()
}
