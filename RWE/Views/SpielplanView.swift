//
//  SpielplanView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct SpielplanView: View {
    
    var body: some View {
        ZStack {
            Image("screen4") // Hier musst du den Namen deines Bildes angeben
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            //Obere Leiste der Tabelle
            
            
            VStack(spacing: 3){
                
                HStack {
                    Text("SPIELPLAN ")
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 390, alignment: .trailing)
                        .foregroundColor(.red)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .leading, endPoint: .trailing))
                    
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                        .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
                )
                .padding(.horizontal, 5)
                
                ZStack{
                }
            }
        }
    }
}
                
                
                
                
                
                
                struct SpielplanView_Previews: PreviewProvider {
                    static var previews: some View {
                        SpielplanView()
                    }
                }
            
