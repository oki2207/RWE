//
//  Splash.swift
//  RWE
//
//  Created by Olli on 06.06.23.
//

import SwiftUI

struct Splash: View {
    @State private var isShowingContent = false
    
    var body: some View {
        VStack {
            if isShowingContent {
                MainContent()
                    .transition(.move(edge: .trailing))
            } else {
                Image("Logo_Rot-Weiss_Essen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .offset(x: 0, y: -200)
                    .animation(.easeInOut(duration: 1).delay(5))
                    .onAppear {
                        isShowingContent = true
                    }
            }
        }
    }
}

struct MainContent: View {
    @State private var isShowingText = false
    
    var body: some View {
        VStack {
            if isShowingText {
                
                Text("WILLKOMMEN ")
                    .font(.custom("SignPainter", size: 25))
                    .foregroundColor(.black)
                    .transition(.scale)
                    .animation(.easeInOut(duration: 3))
                
                Text("AN DER ")
                    .font(.custom("SignPainter", size: 20))
                    .foregroundColor(.black)
                    .transition(.scale)
                    .animation(.easeInOut(duration: 3))
                
                Text("HAFENSTRASSE ")
                    .font(.custom("SignPainter", size: 40))
                    .foregroundColor(.red)
                    .transition(.scale)
                    .animation(.easeInOut(duration: 3))
                
                Image("Logo_Rot-Weiss_Essen")
                    .resizable()
                       .aspectRatio(contentMode: .fit) // Passt das Bild an den verfügbaren Raum an, während das Seitenverhältnis beibehalten wird
                       .frame(width: 200, height: 200) // Passe die Werte hier entsprechend an
                       .transition(.scale)
                       .shadow(color: Color.red.opacity(1.0), radius: 10, x: 0, y: 2)
                       .animation(.linear(duration: 10))
                
                
                HStack(spacing: -7){
                    Text("#IMME ")
                        .font(.custom("SignPainter", size: 30))
                        .foregroundColor(.black)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 3))
                    
                    Text("RWE ")
                        .font(.custom("SignPainter", size: 40))
                        .foregroundColor(.red)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 1))
                    
                    Text("ITER ")
                        .font(.custom("SignPainter", size: 30))
                        .foregroundColor(.black)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 5))
                }

            }
                
            
        }
            
        
    
        
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    isShowingText = true
                }
            }
        }
    }
}
