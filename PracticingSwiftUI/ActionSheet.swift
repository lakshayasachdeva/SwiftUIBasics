//
//  ActionSheet.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI



struct ActionSheetDemo: View {
    @State var showSheet = false
    var body: some View {
        Button("Show Sheet") {
            showSheet.toggle()
        }
        .confirmationDialog(
            Text("Permanently erase the items in the trash?"),
            isPresented: $showSheet
        ) {
            Button("Empty Trash", role: .destructive) {
                // Handle empty trash action.
            }
            Button("Not empty Trash", role: .cancel) {
                // Handle empty trash action.
            }
            Button("Go to Trash", role: .none) {
                // Handle empty trash action.
            }
        }
    }
}

#Preview {
    ActionSheetDemo ()
}

// Almost similar to alerts but with alerts we can't add more than 2 buttons.
// Action sheet comes from bottom whereas alert comes from top
