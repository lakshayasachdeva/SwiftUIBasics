//
//  FramePractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct FramePractice: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color(.red))
            .frame(width: 200, alignment: .leading)
            .background(Color.green)
            .frame(width: 400, height: 400, alignment: .center)
            .background(Color.blue)
            .frame(width: 500, height: 500, alignment: .leading)
            .background(Color.yellow)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .background(Color.green)// used to make it leading i.e. from 0
        // with other frame it was not possible
        
    }
}

#Preview {
    FramePractice()
}
