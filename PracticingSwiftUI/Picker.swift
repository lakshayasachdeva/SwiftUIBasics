//
//  Picker.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct PickerDemo: View {
    @State var selection:String = "20"
    @State var dataArray = ["Most popular", "Most recent", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.blue  // to set the color of the selected segment
        // otherwise there is no way to do it..
        // it is going to update all the segmented controls
        
        // to update the text
        // we can set other values of title as well according to the keys...
        // just type .(dot) and see the available options
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Age")
                Text(selection)
            }
    
            // wheel style
            Picker(
                selection: $selection,
                content: {
                    ForEach(0..<3) { age in
                        Text("\(age)")
                            .tag("\(age)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .bold()
                    }
                },
                label: {
                    Text("Picker")
                }
            )

            .pickerStyle(.wheel)
            
            
            // Menu style
            Picker(
                selection: $selection,
                content: {
                    ForEach(10..<20) { age in
                        Text("\(age)")
                            .tag("\(age)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .bold()
                    }
                },
                label: {
                    Text("Picker")
                }
            )
           
            .pickerStyle(.menu)
            
            
            // segmented control style
            Picker(
                selection: $selection,
                content: {
                    ForEach(20..<25) { age in
                        Text("\(age)")
                            .tag("\(age)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .bold()
                    }
                },
                label: {
                    Text("Picker")
                }
            )
            .pickerStyle(.segmented)
            
            
            
            // Exercise
            
            Picker(selection: $selection) {
                ForEach(dataArray, id: \.self) { el in
                    HStack {
                        Text(el)
                        Image(systemName: "hear.fill")
                    }
                    .tag(el)
                }
            } label: {
                HStack {
                    Text("Filter")
                    Text(selection)
                }
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(
                    Color.blue
                )
                .cornerRadius(10)
                .shadow(radius: 10)
            }
            .pickerStyle(.menu)

            
        }
        
    }
}

#Preview {
    PickerDemo()
}
