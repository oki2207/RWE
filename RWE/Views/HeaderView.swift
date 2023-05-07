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
                .foregroundColor(.white)
                .shadow(color: Color.white.opacity(0.4), radius: 10, x: 0, y: 2)
                
            VStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 3, height: 45)
                
            }
            Image("Logo_Rot-Weiss_Essen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .shadow(color: Color.white.opacity(1.0), radius: 10, x: 0, y: 2)
        
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .center, endPoint: .trailing), lineWidth: 15)
                .shadow(color: Color.red.opacity(1.0), radius: 20, x: 0, y: 2)
        )

        .background(Color.red)
        
          
            
}



        }
