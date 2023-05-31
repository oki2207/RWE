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
    @EnvironmentObject var gameViewModel2: LastGame
    @EnvironmentObject var NewsViewModel: NewsViewModel
    
    var body: some View {
        ZStack {
            Image("screen2")
                .resizable()
                .scaledToFill()
                .opacity(1.0)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 5) {
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
                
                ForEach(NewsViewModel.news, id: \.id) { news in
                    
                    VStack {
                        
                        ZStack {
                            Text("NEWS ")
                                .font(.custom("SignPainter", size: 30))
                                .frame(maxWidth: 350, alignment: .trailing)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                .padding(.top, 15)
                                .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                        }
                        // News Box
                        .frame(width: 380, height: 200)
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
                        .padding(3)
                        
                        // Weitere Inhalte der News-Box
                    }
                }
                                
                                
                                //NÄCHSTES SPIEL____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
                                
                                ForEach(gameViewModel.game, id: \.id) { game in
                                    
                                    ZStack {
                                        Color.gray.opacity(0.2)
                                            .ignoresSafeArea()
                                        ScrollView {
                                            VStack(spacing: 20) {
                                                VStack {
                                                    
                                                    ZStack {
                                                        Text("NÄCHSTES SPIEL ")
                                                            .font(.custom("SignPainter", size: 30))
                                                            .frame(maxWidth: 350, alignment: .trailing)
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                            .padding(.top, 15)
                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                        
                                                    }
                                                    
                                                    
                                                    VStack {
                                                        Text("\(game.spieltag) - \(game.league) - \(game.day) - \(game.date) - \(game.time)")
                                                            .font(.custom("SignPainter", size: 15))
                                                            .frame(maxWidth: 350, alignment: .trailing)
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                            .padding(.top, 1)
                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                        
                                                        
                                                        
                                                        //HEIMTEAM
                                                        
                                                       
                                                            HStack {
                                                               
                                                                    Image("\(game.homeTeamLogo)")
                                                                        .resizable()
                                                                        .frame(width: 70, height: 70)
                                                                        .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                        .padding(.leading,20)
                                                                    
                                                                    
                                                                    Text("\(game.homeTeamName)")
                                                                        .font(.custom("SignPainter", size: 14))
                                                                        .foregroundColor(.white)
                                                                        .frame(width: 60, alignment: .leading)
                                                                        .padding(.leading, 10)
                                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                    
                                                                    
                                                            
                                                                    
                                                                
                                                                
                                                                    Text(" - : - ")
                                                                        .font(.custom("SignPainter", size: 25))
                                                                        .frame(width: 60, alignment: .center)
                                                                        .foregroundColor(.white)
                                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                        
                                                                
                                                                
                                                                
                                                                //AWAYTEAM
                                                                
                                                                
                                                                Text("\(game.awayTeamName)")
                                                                    .font(.custom("SignPainter", size: 14))
                                                                    .foregroundColor(.white)
                                                                    .frame(width: 65, alignment: .trailing)
                                                                    .padding(.trailing, 10)
                                                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                   
                                                               
                                                                    Image("\(game.awayTeamLogo)")
                                                                        .resizable()
                                                                        .frame(width: 70, height: 70)
                                                                        .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                        .padding(.trailing,20)
                                                                       
                                                                    
                                                                   
                                                                    
                                                                 
                                                                    
                                                                    
                                                                
                                                                
                                                            
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
                                                .frame(width: 380, height: 180)
                                                .padding(3)
                                            }
                                            
                                            //LETZTES SPIEL____________________________________________________________________________________________________________________________________________________________________________________________________________________________
                                            
                                            ForEach(gameViewModel2.game, id: \.id) { game in
                                                
                                                ZStack {
                                                    Color.gray.opacity(0.2)
                                                        .ignoresSafeArea()
                                                    ScrollView {
                                                        VStack(spacing: 20) {
                                                            VStack {
                                                                
                                                                ZStack {
                                                                    Text("LETZTES SPIEL ")
                                                                        .font(.custom("SignPainter", size: 30))
                                                                        .frame(maxWidth: 350, alignment: .trailing)
                                                                        .foregroundColor(.white)
                                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                        .padding(.top, 15)
                                                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                    
                                                                }
                                                                
                                                                VStack {
                                                                    Text("\(game.spieltag) - \(game.league) - \(game.day) - \(game.date) - \(game.time)")
                                                                        .font(.custom("SignPainter", size: 15))
                                                                        .frame(maxWidth: 350, alignment: .trailing)
                                                                        .foregroundColor(.white)
                                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                        .padding(.top, 1)
                                                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                    
                                                                    
                                                                    HStack {
                                                                        
                                                                        Image("\(game.homeTeamLogo)")
                                                                            .resizable()
                                                                            .frame(width: 70, height: 70)
                                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                            .padding(.leading,20)
                                                                        
                                                                        
                                                                        Text("\(game.homeTeamName)")
                                                                            .font(.custom("SignPainter", size: 14))
                                                                            .foregroundColor(.white)
                                                                            .frame(width: 60, alignment: .leading)
                                                                            .padding(.leading, 10)
                                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        Text(" 2 : 2 ")
                                                                            .font(.custom("SignPainter", size: 25))
                                                                            .frame(width: 60, alignment: .center)
                                                                            .foregroundColor(.white)
                                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        //AWAYTEAM
                                                                        
                                                                        
                                                                        Text("\(game.awayTeamName)")
                                                                            .font(.custom("SignPainter", size: 14))
                                                                            .foregroundColor(.white)
                                                                            .frame(width: 65, alignment: .trailing)
                                                                            .padding(.trailing, 10)
                                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                        
                                                                        
                                                                        Image("\(game.awayTeamLogo)")
                                                                            .resizable()
                                                                            .frame(width: 70, height: 70)
                                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                            .padding(.trailing,20)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
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
                                                            .frame(width: 380, height: 180)
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
            
        
                                
                                

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(NextGame())
            .environmentObject(LastGame())
            .environmentObject(NewsViewModel())
    }
}


