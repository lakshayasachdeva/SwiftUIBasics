//
//  GridsPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct GridsPractice: View {
    
    let gridItems = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        ScrollView {
//            LazyVGrid(
//                columns: gridItems,
//                content: {
//                    ForEach(0..<20) { index in
//                        Rectangle()
//                            .fill()
//                            .frame(height: 50)
//                    }
//            })
            
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 400)
            
            
            LazyVGrid(
                columns: gridItems,
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                spacing: 8,
                /*pinnedViews: [.sectionHeaders],*/ // to pin section header, footers.
                pinnedViews:[],
                content: {
                    Section(header: Text("Section 1")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.red)
                                    .frame(height: 100)
                            }
                        }
                        
                    
                    
                    Section(header: Text("Section 2")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 100)
                            }
                        }
                    
                    Section(header: Text("Section 3")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(height: 100)
                            }
                        }
                })
//                            
//                LazyHGrid(
//                    rows: gridItems,
//                    alignment: .center,
//                    pinnedViews: [],
//                    content: {
//                        Section("Section 1") {
//                            ForEach(0..<25) { index in
//                                Rectangle()
//                                    .fill(Color.red)
//                                    .frame(width: 50, height: 50)
//                            }
//                        }
//                        
//                        Section("Section 2") {
//                            ForEach(0..<25) { index in
//                                Rectangle()
//                                    .fill(Color.green)
//                                    .frame(width: 50, height: 50)
//                            }
//                        }
//                        
//                        Section("Section 3") {
//                            ForEach(0..<25) { index in
//                                Rectangle()
//                                    .fill(Color.blue)
//                                    .frame(width: 50, height: 50)
//                            }
//                        }
//                    })
            }
            
        
    }
}

#Preview {
    GridsPractice()
}
