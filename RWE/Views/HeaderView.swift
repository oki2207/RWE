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
                .shadow(color: Color.red.opacity(1.0), radius: 50, x: 10, y: 10)
                .shadow(color: Color.black.opacity(1.0), radius: 5, x: 0, y: 2)
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 3, height: 40)
                
            }
            Image("Logo_Rot-Weiss_Essen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .shadow(color: Color.red.opacity(1.0), radius: 20, x: 0, y: 2)
        
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.red, lineWidth: 2)
                .shadow(color: Color.red.opacity(1.0), radius: 20, x: 0, y: 2)
        )
        //.background(
          //          Image("Logo_Rot-Weiss_Essen")
            //            .resizable()
              //          .aspectRatio(contentMode: .fill)
                //        .edgesIgnoringSafeArea(.all))
                        
        
    }
}



