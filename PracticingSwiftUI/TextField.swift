//
//  TextField.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct TextFieldDemo: View {
    @State var textFieldText:String = ""
    @State var dataArray = [String]()
    var body: some View {
        
        NavigationView{
            VStack {                
                TextField("What's on your mind, today?", text: $textFieldText)
                //.textFieldStyle(.roundedBorder)
                    .padding()
                    .background(
                        Color.gray.opacity(0.3)
                            .cornerRadius(10)
                    )
                    .foregroundColor(.blue)
                    .font(.headline)
                
                Button(action: {
                    if isValidText() {    // to save only when text is greater than 3 characters...
                        saveText()
                    }
                }, label: {
                    Text("Save").textCase(.uppercase)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            isValidText() ? Color.blue : Color.gray.opacity(0.5)
                        )
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                })
                .disabled(!isValidText())
                
                List {
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Demo!")
        }
    }
    
    func isValidText() -> Bool {
        return textFieldText.count >= 3
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
        
    }
}

#Preview {
    TextFieldDemo()
}


// there are other initializers params available
// if we want to know when user has tap on return key then
