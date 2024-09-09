//
//  Toggle.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct ToggleDemo: View {
    @State var isToggle:Bool = false
    var body: some View {
        
        VStack {
            HStack {
                Text("Status:")
                Text(isToggle ? "Online" : "Offline")
            }
            .font(.headline)
            .bold()
            Toggle("Change status", isOn: $isToggle)
            Toggle("Change status", systemImage: "heart.fill", isOn: $isToggle)
                .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    ToggleDemo()
}
