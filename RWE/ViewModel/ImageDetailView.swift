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
                .frame(maxWidth: .infinity)
                
            Text("Die goldene Ära")
                .font(.headline)
                .foregroundColor(.white)
            
            Text("Fritz Szepan, Fritz Herkenrath, Heinz Wewers, Willi Köchling, Fritz Schaffner, Joachim Jänisch, Werner Göbel, Mittelfeld:Kurt Roetger,Paul Jahnel,Willi Grewer, Clemens Wientjes, Franz Islacker, Willi Vordenbäumen, Helmut Rahn, Fred Röhrig, Fritz Abromeit, Günther Steffens, Bernhard Termath, August Gottschalk, Helmut Malinowski,Werner Cornelissen")
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.bottom, 20)
            
            Button("Schließen") {
                isPresented = false
            }
            .padding()
        }
        
        .background((RoundedRectangle(cornerRadius: 10).fill(Color.red.opacity(1.0)).shadow(radius: 5)))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

