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
            Text("ROT-WEISS ESSEN ")
                .font(.custom("SignPainter", size: 48))
                .foregroundColor(.red)
                .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                
            VStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 3, height: 45)
                
            }
            Image("Logo_Rot-Weiss_Essen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .shadow(color: Color.red.opacity(1.0), radius: 10, x: 0, y: 2)
        
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 5)
                .shadow(color: Color.red.opacity(1.0), radius: 20, x: 0, y: 2)
        )

        .background(Color.white)
        
          
            
}



        }
