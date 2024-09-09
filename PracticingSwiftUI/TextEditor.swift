//
//  TextEditor.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct TextEditorDemo: View {
    @State var textEditorText = ""
    @State var savedText: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(.black)
//                    .background(
//                        Color.gray.opacity(0.5)   // it doesn't work
//                    )
                    .colorMultiply(.gray.opacity(0.3)) // workaround but it changes the text color as well...
                    .font(.headline)
                    .bold()
                    .cornerRadius(10)
                    
                Button(action: {
                    saveText()
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.blue.cornerRadius(10)
                        )
                })
                Text(savedText)
                    .foregroundStyle(.white)
                    .font(.caption)
                Spacer()
            }
            .padding()
            .navigationTitle("SwifUI TextView")
        }
    }
    
    func saveText() {
        savedText = textEditorText
        textEditorText = ""
    }
}

#Preview {
    TextEditorDemo()
}
