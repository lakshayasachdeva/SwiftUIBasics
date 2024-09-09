//
//  ForEachPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 31/08/24.
//

import SwiftUI

struct ForEachPractice: View {
    let data = ["Hello", "Hi", "Everyone", "Welcome", "to", "my", "channel"]
    var body: some View {
        
        //Spacer()
        
//        VStack(alignment: .center, spacing: 8) {
//            ForEach(data.indices) { index in
//                Text("\(data[index])")
//            }
//        }
//        
//        Spacer()
//        
//        HStack(spacing: 5) {
//            ForEach(data.indices) { index in
//                Text("\(data[index])")
//            }
//        }
//        
//        Spacer()
        
        ForEach(0..<10) { index in
            Circle()
                .frame(width: 44, height: 44)
                .overlay {
                    Text("\(index)")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                }
        }
        
    }
}

#Preview {
    ForEachPractice()
}
