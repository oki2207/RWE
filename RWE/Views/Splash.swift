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
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)
            
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
        @State private var isShowingLogo = false
        @State private var isShowingUpperTexts = false
        @State private var isShowingLowerTexts = false
        @State private var isShowingContent = false
        
        var body: some View {
            VStack {
                if isShowingUpperTexts {
                    Text("WILLKOMMEN ")
                        .font(.custom("SignPainter", size: 25))
                        .foregroundColor(.black)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 1), value: isShowingContent)
                    
                    Text("AN DER ")
                        .font(.custom("SignPainter", size: 20))
                        .foregroundColor(.black)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 1), value: isShowingContent)
                    
                    Text("HAFENSTRASSE ")
                        .font(.custom("SignPainter", size: 40))
                        .foregroundColor(.white)
                        .transition(.scale)
                        .animation(.easeInOut(duration: 1), value: isShowingContent)
                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    isShowingLowerTexts = true
                                }
                            }
                        }
                }
                
                if isShowingLogo {
                    
                    Image("Logo_Rot-Weiss_Essen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .transition(.scale)
                        .shadow(color: Color.white.opacity(1.0), radius: 10, x: 0, y: 2)
                        .animation(.linear(duration: 1), value: isShowingContent)
                        .scaleEffect(1.0) // Vergrößere das Bild um 20%
                        .animation(.easeInOut(duration: 1).repeatForever(), value: isShowingContent)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    isShowingUpperTexts = true
                                }
                            }
                        }
                }
                
                
                
                if isShowingLowerTexts {
                    HStack(spacing: -7) {
                        Text("#IMME ")
                            .font(.custom("SignPainter", size: 30))
                            .foregroundColor(.black)
                            .transition(.scale)
                            .animation(.easeInOut(duration: 1), value: isShowingContent)
                        
                        Text("RWE ")
                            .font(.custom("SignPainter", size: 40))
                            .foregroundColor(.white)
                            .transition(.scale)
                            .animation(.easeInOut(duration: 1), value: isShowingContent)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("ITER ")
                            .font(.custom("SignPainter", size: 30))
                            .foregroundColor(.black)
                            .transition(.scale)
                            .animation(.easeInOut(duration: 1), value: isShowingContent)
                    }
                }
            }
            .onAppear {
                withAnimation {
                    isShowingLogo = true
                }
            }
        }
    }
}
