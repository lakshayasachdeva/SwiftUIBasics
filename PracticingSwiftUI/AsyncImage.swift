//
//  AsyncImage.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 05/09/24.
//

import SwiftUI

struct AsyncImageDemo: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        
        // it caches the image by default for us using NSURLCache..
//        AsyncImage(url: url) { returnedImg in
//            returnedImg      // this is instance of Image only...
//                .resizable()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        } placeholder: {
//            ProgressView()
//        }
        
        // phase gives us a comprehensive switch cases for success, failure and loading(empty)
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure(let error):
                    Image(systemName: "questionmark")
                    .font(.headline)
                
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)

            }
        }

    }
}

#Preview {
    AsyncImageDemo()
}
