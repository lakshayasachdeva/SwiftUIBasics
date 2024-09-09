//
//  SubmitTextField.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct SubmitTextFieldDemo: View {
    @State var textFieldText: String = ""
    var body: some View {
        TextField("Placeholder...", text: $textFieldText)
            .onSubmit {
                print("return key has been tapped on keyboard...")
            }
            .submitLabel(.route)
        // to set the name of return key...
    }
}

#Preview {
    SubmitTextFieldDemo()
}



/*
 onSubmit => return key callback on keyboard
 submitLabel => to set the name of the return key given by Apple
 */
