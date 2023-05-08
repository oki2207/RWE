//
//  KaderView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct KaderView: View {
    var body: some View {
        Image("externalimages-2")
            .resizable()
            .scaledToFill()
            .opacity(1.0)
            .edgesIgnoringSafeArea(.all)
        
        //Obere Leiste der Tabelle
        
        VStack(spacing: 3) {
            
            HStack {
                Text("TEAM ")
                    .font(.custom("SignPainter", size: 30))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.red)
                
            }
            .overlay(
                RoundedRectangle(cornerRadius: 0)
                    .stroke(LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 5)
                    .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
            )
            
            
        }
    }
}
    
    
    
    struct KaderView_Previews: PreviewProvider {
        static var previews: some View {
            KaderView()
        }
    }

