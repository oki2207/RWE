//
//  HomeView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedTab = 0
    @EnvironmentObject var gameViewModel: NextGame
    
    var body: some View {
        ZStack {
            Image("screen2")
                .resizable()
                .scaledToFill()
                .opacity(1.0)
                .edgesIgnoringSafeArea(.all)
            
            //Obere Leiste der Tabelle
            
            VStack(spacing: 3) {
                
                HStack {
                    Text("HAFENSTRASSE ")
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 280, alignment: .trailing)
                        .foregroundColor(.red)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .leading, endPoint: .trailing))
                    
                }
                .padding(.top, 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                        .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
                        .padding(.top, 20)
                )
                
                // News-Box
                ZStack {
                    Color.gray.opacity(0.2)
                        .ignoresSafeArea()
                    ScrollView {
                        VStack(spacing: 20) {
                            VStack {
                                Spacer()
                                ZStack {
                                    Text("NEWS ")
                                        .font(.custom("SignPainter", size: 30))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    
                                }
                                Image("")
                                    .resizable()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                Text("")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.black)
                                    .background(
                                        Color.white
                                            .frame(width: 120) // Hier die Breite einstellen
                                            .cornerRadius(0)
                                            .padding(.horizontal)
                                    )
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                            .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2)
                                    )
                                    .padding(.horizontal, 130)
                                
                                
                                Spacer()
                            }
                            
                            //BOX
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.white.opacity(0.8))
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [Color.clear, .red]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 2
                                            )
                                    )
                                
                            )
                            .frame(width: 380, height: 200 )
                            .padding(3)
                        }
                        
                        
                        
                        ForEach(gameViewModel.game, id: \.id) { game in
                            
                            ZStack {
                                Color.gray.opacity(0.2)
                                    .ignoresSafeArea()
                                ScrollView {
                                    VStack(spacing: 20) {
                                        VStack {
                                            Spacer()
                                            ZStack {
                                                Text("NÄCHSTES SPIEL ")
                                                    .font(.custom("SignPainter", size: 30))
                                                    .frame(maxWidth: 350, alignment: .trailing)
                                                    .foregroundColor(.white)
                                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                    .padding(.top, 15)
                                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                
                                            }
                                            Spacer()
                                            
                                            VStack {
                                                Text("\(game.league) - \(game.day) - \(game.date) - \(game.time)")
                                                    .font(.custom("SignPainter", size: 20))
                                                    .frame(maxWidth: .infinity, alignment: .center)
                                                    .foregroundColor(.black)
                                                    .background(
                                                        Color.white
                                                            .frame(width: 250)
                                                            .cornerRadius(0)
                                                            .padding(.horizontal)
                                                    )
                                                
                                                
                                                ZStack{
                                                    HStack {
                                                        
                                                        Image("\(game.homeTeamLogo)")
                                                            .resizable()
                                                            .frame(maxWidth: 70, maxHeight: 70)
                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                            .padding(.leading, 60)
                                                        
                                                        Spacer()
                                                        
                                                        Image("\(game.awayTeamLogo)")
                                                            .resizable()
                                                            .frame(maxWidth: 30, maxHeight: 50)
                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                            .padding(.trailing, 30)
                                                        
                                                        VStack{
                                                            
                                                            Text("\(game.homeTeamName)")
                                                                .font(.custom("SignPainter", size: 20))
                                                                .frame(maxWidth: .infinity, alignment: .center)
                                                                .foregroundColor(.black)
                                                                .background(
                                                                    Color.white
                                                                        .frame(width: 120)
                                                                        .cornerRadius(0)
                                                                        .padding(.horizontal)
                                                                )
                                                                .overlay(
                                                                    RoundedRectangle(cornerRadius: 0)
                                                                        .stroke(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                                        .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2)
                                                                )
                                                            
                                                            
                                                            
                                                                .overlay(
                                                                    RoundedRectangle(cornerRadius: 0)
                                                                        .stroke(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                                        .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2)
                                                                )
                                                                .padding(.horizontal, 50)
                                                            Spacer()
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        
                                        
                                                    
                                                    //BOX
                                                    .background(
                                                        RoundedRectangle(cornerRadius: 0)
                                                            .fill(Color.white.opacity(0.8))
                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                            .overlay(
                                                                RoundedRectangle(cornerRadius: 0)
                                                                    .stroke(
                                                                        LinearGradient(
                                                                            gradient: Gradient(colors: [Color.clear, .red]),
                                                                            startPoint: .topLeading,
                                                                            endPoint: .bottomTrailing
                                                                        ),
                                                                        lineWidth: 2
                                                                    )
                                                            )
                                                        
                                                    )
                                                    .frame(width: 380, height: 200)
                                                    .padding(3)
                                                    
                                                    
                                                }
                                                ZStack {
                                                    Color.gray.opacity(0.2)
                                                        .ignoresSafeArea()
                                                    ScrollView {
                                                        VStack(spacing: 20) {
                                                            VStack {
                                                                Spacer()
                                                                ZStack {
                                                                    Text("LETZTES SPIEL ")
                                                                        .font(.custom("SignPainter", size: 30))
                                                                        .frame(maxWidth: 350, alignment: .trailing)
                                                                        .foregroundColor(.white)
                                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                        .padding(.top, 15)
                                                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                    
                                                                }
                                                                Image("")
                                                                    .resizable()
                                                                    .frame(maxWidth: 100, maxHeight: 100)
                                                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                Text("")
                                                                    .font(.custom("SignPainter", size: 20))
                                                                    .frame(maxWidth: .infinity, alignment: .center)
                                                                    .foregroundColor(.black)
                                                                    .background(
                                                                        Color.white
                                                                            .frame(width: 120) // Hier die Breite einstellen
                                                                            .cornerRadius(0)
                                                                            .padding(.horizontal)
                                                                    )
                                                                    .overlay(
                                                                        RoundedRectangle(cornerRadius: 0)
                                                                            .stroke(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                                            .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2)
                                                                    )
                                                                    .padding(.horizontal, 130)
                                                                
                                                                
                                                                Spacer()
                                                            }
                                                            
                                                            //BOX
                                                            .background(
                                                                RoundedRectangle(cornerRadius: 0)
                                                                    .fill(Color.white.opacity(0.8))
                                                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                    .overlay(
                                                                        RoundedRectangle(cornerRadius: 0)
                                                                            .stroke(
                                                                                LinearGradient(
                                                                                    gradient: Gradient(colors: [Color.clear, .red]),
                                                                                    startPoint: .topLeading,
                                                                                    endPoint: .bottomTrailing
                                                                                ),
                                                                                lineWidth: 2
                                                                            )
                                                                    )
                                                                
                                                            )
                                                            .frame(width: 380, height: 200)
                                                            .padding(3)
                                                            
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        
                                
                                

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(NextGame())
    }
}


