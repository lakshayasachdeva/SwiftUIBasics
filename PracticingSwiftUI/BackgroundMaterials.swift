//
//  BackgroundMaterials.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct BackgroundMaterialsDemo: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
           // .background(.black).opacity(0.5)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            
        }
        .ignoresSafeArea(.all)
        .background(
            Image("img2", bundle: nil)
                
        )
    }
}

#Preview {
    BackgroundMaterialsDemo()
}


// backgrounds given by Apple
// natural looking backgrounds which Apple uses quite often in its Demos
// e.g. Facetime, Maps etc.
// Apple pushing us to use these
