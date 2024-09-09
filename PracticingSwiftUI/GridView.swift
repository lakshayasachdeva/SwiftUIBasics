//
//  GridView.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 09/09/24.
//

import SwiftUI

struct GridViewDemo: View {
    var body: some View {
        
        // Exercise -1
        //        Grid {
        //            GridRow {
        //                cell(i: 1)
        //                cell(i: 2)
        //                cell(i: 3)
        //            }
        //            //cell(i: 73)
        //            Divider()
        //                .gridCellUnsizedAxes(.horizontal)  // if we don't add this line it will try to make other rows also expand and fill the entire space which makes the space between cells bigger.
        //            GridRow {
        //                cell(i: 4)
        //                cell(i: 5)
        //            }
        //        }
        
        
        // Exercise-2
//        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
//            ForEach(0..<4) { rowIndex in
//                GridRow {
//                    ForEach(0..<4) { columnIndex in
//                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
//                        if cellNumber == 7 {
//                           // EmptyView()  // it means lack of a view..
//                            Color.clear
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
//                                // this is done because we know Color view tries to take the space available as they're filling so we have to set frame
//                        } else {
//                            cell(i: cellNumber)
//                        }
//                    }
//                }
//            }
//        }
        
        // Exercise-3
        Grid {
            GridRow {
                Color.green.opacity(0.3)
                .gridCellColumns(3)
            }
            GridRow {
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                    .gridCellColumns(2)
            }
            GridRow{
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                Color.orange.opacity(0.5)
            }
            GridRow {
                Color.orange.opacity(0.5)
                    .gridCellColumns(2)
                Color.green.opacity(0.3)
            }
        }
    }
    
    private func cell(i:Int) -> some View {
        Text("\(i)")
            .font(.largeTitle)
            .padding()
            .background(
                .blue
            )
    }
}

#Preview {
    GridViewDemo()
}
