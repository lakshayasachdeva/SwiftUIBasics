//
//  TextSelection.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct TextSelectionDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
    }
}

#Preview {
    TextSelectionDemo()
}


// user can select the text and copy,share....
// just a one line of code...
