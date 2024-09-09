//
//  FocusState.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

enum OnboardingField: Hashable {
    case username
    case password
}

struct FocusStateDemo: View {
    @State var username: String = ""
    //@FocusState var userNameInFocus: Bool  // no need to give default value, it takes the value automatically
    
    @State var password: String = ""
    //@FocusState var passwordInFocus: Bool  // no need to
    
    @FocusState var fieldInFocus:OnboardingField?

    var body: some View {
        VStack(spacing: 40) {
            TextField("Add your name here...", text: $username)
                //.focused($userNameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    Color.gray.opacity(0.3)
                        .cornerRadius(10)
                )
            
            
            SecureField("Add your password here...", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    Color.gray.opacity(0.3)
                        .cornerRadius(10)
                )
            
            Button("SIGN UP") {
                let isUsernameValid = !username.isEmpty
                let iPasswordValid = !password.isEmpty
                
                if isUsernameValid && iPasswordValid {
                    print("signin => both are valid...")
                } else if isUsernameValid && !iPasswordValid {
                    fieldInFocus = .password
                } else if !isUsernameValid && iPasswordValid {
                    fieldInFocus = .username
                }
            }
            
//            Button("Toggle Focus State") {
//                userNameInFocus.toggle()
//            }
        }
        .padding(40)
//        '.onAppear(perform: {
//            DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: DispatchWorkItem(block: {
//                userNameInFocus.toggle()
//            }))
//        })'
        
    }
}

#Preview {
    FocusStateDemo()
}


// same as becomesFirstResponder in UIKit

/*
 If we create n no of textfields then we have to create equal no of focus state var properties.
 So, the workaround is let's create an enum with all the cases.. no of cases => no of focus state required for fields...
 */

