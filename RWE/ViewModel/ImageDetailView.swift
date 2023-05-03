//
//  ImageDetailView.swift
//  RWE
//
//  Created by Olli on 03.05.23.
//

import SwiftUI

struct ImageDetailView: View {
    var imageName: String
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .padding()
            Button(action: { isPresented = false }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.largeTitle)
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
