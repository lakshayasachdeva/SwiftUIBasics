//
//  EnvironmentObject.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject, Observable {
    @Published var dataArray = [String]()
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: [
            "iPhone 1",
            "iPhone 2",
            "iPhone 3",
            "iPhone 4",
            "iPhone 5",
            "iPhone 6",
            "iPhone 7"
        ])
    }
}

struct EnvironmentObjectDemo: View {
    
    @StateObject var viewModel = EnvironmentViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("iOS Devices")
        }
        .environment(viewModel)
    }
}


struct DetailView: View {
    let selectedItem: String
    
    // don't need it
    // but to pass to FinalView we have to take
    // so, this is extra code...
    // solution is Environment
   // @ObservedObject var viewModel:EnvironmentViewModel
    
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        .white
                    )
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView:View {
    @EnvironmentObject var viewModel:EnvironmentViewModel

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                .red, .blue
             ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    
                    ForEach(viewModel.dataArray, id: \.self) { el in
                        Text(el)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectDemo()
}
