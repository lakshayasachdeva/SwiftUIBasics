//
//  ObservableMacro.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 09/09/24.
//

import SwiftUI

@Observable
class ObservableViewModel: ObservableObject  {
     var title: String = "Some title"
    
    // use @observationIgnored if you want value not to be publisher
    // be default all properties are publisher. 
}


struct ObservableMacroDemo: View {
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "New title"
            }
            
            SomeChildView(viewModel: viewModel)
            
            ThirdChildView()
        }
        .environment(viewModel)
        
    }
}


struct SomeChildView: View {
    @Bindable var viewModel:ObservableViewModel
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "New title2"
            }
        }
    }
}

struct ThirdChildView: View {
    @Environment(ObservableViewModel.self) var vm
    
    var body: some View {
        VStack {
            Button(vm.title) {
                vm.title = "New title3"
            }
        }
    }
}


#Preview {
    ObservableMacroDemo()
}
