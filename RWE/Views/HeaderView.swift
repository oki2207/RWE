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
            VStack(alignment: .trailing) { // VStack hinzugefügt und alignment auf .leading gesetzt
                Text("ROT-WEISS ESSEN ")
                    .font(.custom("SignPainter", size: 48))
                    .foregroundColor(.red)
                    .shadow(color: Color.white.opacity(1.0), radius: 3, x: 0, y: 0)
                
                HStack {
                    VStack(alignment: .trailing) {
                        HStack(spacing: -4) {
                            Text("#IMME ")
                                .font(.custom("SignPainter", size: 20))
                                .foregroundColor(.black)
                                .transition(.scale)
                            
                            Text("RWE ")
                                .font(.custom("SignPainter", size: 24))
                                .foregroundColor(.red)
                                .transition(.scale)
                            
                            Text("ITER ")
                                .font(.custom("SignPainter", size: 20))
                                .foregroundColor(.black)
                                .transition(.scale)
                        }
                        .padding(.leading, -200)
                    }
                    
                    Text("SEIT 1907 ")
                        .font(.custom("SignPainter", size: 20))
                        .foregroundColor(.red)
                        .padding(.leading)
                }

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
