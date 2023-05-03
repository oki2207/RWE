//
//  HeaderView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//
import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Rot-Weiss Essen")
                .font(.custom("HelveticaNeue-CondensedBlack", size: 40))
                .foregroundColor(.red)
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 3, height: 40)
                
            }
            Image("Logo_Rot-Weiss_Essen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
        
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.red, lineWidth: 2)
                .shadow(radius: 10)
        )
        
    }
}



