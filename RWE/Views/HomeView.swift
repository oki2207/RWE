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
    @EnvironmentObject var wetterviewModel: WetterViewModel
    @EnvironmentObject var networkMonitor: NetworkMonitor
    @State private var currentIndex = 0
    @State private var showWetter = false
    
    
    var body: some View {
        
        
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)
            
            
            
            
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
                .padding(.vertical, 10)
                
                if networkMonitor.isConnected{
                    HStack{
                    Text("AKTUELLES WETTER ")
                        Image(systemName: wetterviewModel.wetterEssen.thumbnail)
                    Text("\(wetterviewModel.wetterEssen.temperatur_jetzt) \(showWetter ? "- " : "+ ") ")
                            .onTapGesture {
                                showWetter.toggle()
                            }
                            
                        }
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 350, alignment: .trailing)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .padding(.top, 15)
                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                    
                    if showWetter {
                        
                        Text("\(wetterviewModel.wetterEssen.witterung.uppercased()) ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("TEMPERATUR MIN.  \(wetterviewModel.wetterEssen.temperatur_min) ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("TEMPERATUR MAX.  \(wetterviewModel.wetterEssen.temperatur_max) ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("WIND  \(wetterviewModel.wetterEssen.windgeschwindigkeit) KM/H ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("FEUCHTIGKEIT  \(wetterviewModel.wetterEssen.feuchtigkeit) % ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                    }
                } else {
                    
                    //TODO: Überprüfen ob [0] oder [wetterviewModel.wetterDaten.count] richtig ist.
                    HStack{
                    Text("AKTUELLES WETTER ")
                        
                        Image(systemName: wetterviewModel.wetterEssen.thumbnail)
                        Text("\(wetterviewModel.wetterDaten[0].temperatur_jetzt ?? "ERROR ") \(showWetter ? "- " : "+ ") ")
                            .onTapGesture {
                                showWetter.toggle()
                            }
                        }
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 350, alignment: .trailing)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .padding(.top, 15)
                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                    
                    if showWetter {
                        
                        Text("\(wetterviewModel.wetterDaten[0].witterung ?? "ERROR ") ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("TEMPERATUR MIN.  \(wetterviewModel.wetterDaten[0].temperatur_min ?? "ERROR ") ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("TEMPERATUR MAX.  \(wetterviewModel.wetterDaten[0].temperatur_max ?? "ERROR ") ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("WIND  \(wetterviewModel.wetterDaten[0].windgeschwindigkeit ?? "ERROR ") KM/H ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                        
                        Text("FEUCHTIGKEIT  \(wetterviewModel.wetterDaten[0].feuchtigkeit ?? "ERROR ") % ")
                            .font(.custom("SignPainter", size: 25))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                    }
                }
                
                
                // News-Box
                VStack {
                    ScrollView{
                        HStack(spacing: 0) {
                            ZStack {
                                Color.gray.opacity(0.2)
                                    .ignoresSafeArea()
                                
                                
                                .frame(width: 380, height: 210)
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
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: 0) {
                                        ForEach(Array(NewsViewModel.news.enumerated()), id: \.offset) { index, news in
                                            ZStack {
                                                Color.gray.opacity(0.0)
                                                    .ignoresSafeArea()
                                                
                                                    .frame(width: 380, height: 210)
                                                    .background(
                                                        RoundedRectangle(cornerRadius: 0)
                                                            .fill(Color.white.opacity(0.0))
                                                            .shadow(color: Color.black.opacity(0.0), radius: 2, x: 3, y: 5)
                                                            .overlay(
                                                                RoundedRectangle(cornerRadius: 0)
                                                                    .stroke(
                                                                        LinearGradient(
                                                                            gradient: Gradient(colors: [Color.clear, Color.clear]),
                                                                            startPoint: .topLeading,
                                                                            endPoint: .bottomTrailing
                                                                        ),
                                                                        lineWidth: 0
                                                                    )
                                                            )
                                                    )
                                                
                                                
                                                Image(news.pic)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 380, height: 210)
                                                    
                                                
                                                
                                                VStack{
                                                    Text(news.textHead)
                                                        .font(.custom("SignPainter", size: 20))
                                                        .frame(maxWidth: 350, alignment: .trailing)
                                                        .foregroundColor(.white)
                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                        .padding(.top, -45)
                                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                    
                                                    VStack{
                                                        Text(news.textinfo)
                                                            .font(.custom("SignPainter", size: 16))
                                                            .frame(maxWidth: 350, alignment: .trailing)
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                            .padding(.top, -25)
                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                    }
                                                }
                                                
                                                // Anzeige des Nachrichteninhalts
                                                
                                                Button(action: {
                                                    print("Button für Nachricht \(news.pic) wurde geklickt.")
                                                }) {
                                                    Color.clear
                                                }
                                                
                                                
                                                .frame(width: 380, height: 210)
                                                .gesture(
                                                    DragGesture()
                                                        .onEnded { value in
                                                            if value.translation.width < 0 && currentIndex < NewsViewModel.news.count - 1 {
                                                                currentIndex += 1 // Nächste Nachricht anzeigen
                                                            } else if value.translation.width > 0 && currentIndex > 0 {
                                                                currentIndex -= 1 // Vorherige Nachricht anzeigen
                                                            }
                                                        }
                                                )
                                                .opacity(index == currentIndex ? 1 : 0) // Nur die aktuelle Nachricht anzeigen, andere ausblenden
                                            }
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                }
                                .frame(width: UIScreen.screenWidth)
                                
                                
                                VStack(spacing:20){
                                    Text("NEWS ")
                                        .font(.custom("SignPainter", size: 30))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    Spacer()
                                    
                                    
                                    
                                    VStack {
                                        Spacer()
                                    /*
                                        HStack {
                                            
                                            
                                            ForEach(NewsViewModel.news.indices, id: \.self) { index in
                                                Circle()
                                                    .frame(width: 10, height: 10)
                                                    .foregroundColor(index == currentIndex ? .red : .gray)
                                            
                                            }
                                            
                                            
                                        }*/
                                        .padding(.bottom, 10)
                                        
                                    }
                                    
                                }
                                    
                            }
                                    
                        }
                                
                                
                                .padding(.top, 10)
                                    
                            
                        
                                
        
                                
                                
                                
                                
                                
                                
                                
                                //NÄCHSTES SPIEL____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
                                
                                ForEach(gameViewModel.game, id: \.id) { game in
                                    
                                    ZStack {
                                        
                                    
                                        VStack {
                                            VStack {
                                                
                                                ZStack {
                                                    HStack{
                                                        Text("LETZTES SPIEL - POKAL ")
                                                            .font(.custom("SignPainter", size: 30))
                                                            .frame(maxWidth: 350, alignment: .trailing)
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                            .padding(.top, 15)
                                                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                                        /*
                                                        Image("nr.svg")
                                                            .resizable()
                                                            .frame(width: 50, height: 50)
                                                         */
                                                        
                                                    }
                                                }
                                                
                                                
                                                VStack {
                                                    Text("\(game.spieltag) - \(game.league) - \(game.day) - \(game.date) - \(game.time)")
                                                        .font(.custom("SignPainter", size: 15))
                                                        .frame(maxWidth: 350, alignment: .trailing)
                                                        .foregroundColor(.white)
                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                        .padding(.top, 1)
                                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    //HEIMTEAM
                                                    
                                                    
                                                    HStack {
                                                        
                                                        Image("\(game.homeTeamLogo)")
                                                            .resizable()
                                                            .frame(width: 50, height: 50)
                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                            .padding(.leading,20)
                                                        
                                                        
                                                        Text("\(game.homeTeamName)")
                                                            .font(.custom("SignPainter", size: 12))
                                                            .foregroundColor(.black)
                                                            .frame(width: 70, alignment: .trailing)
                                                            .padding(.leading, 10)
                                                            
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        Text(" 2 : 0 ")
                                                            .font(.custom("SignPainter", size: 25))
                                                            .frame(width: 60, alignment: .center)
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                                            .cornerRadius(5)
                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                        
                                                        
                                                        
                                                        
                                                        //AWAYTEAM
                                                        
                                                        
                                                        Text("\(game.awayTeamName)")
                                                            .font(.custom("SignPainter", size: 12))
                                                            .foregroundColor(.black)
                                                            .frame(width: 70, alignment: .leading)
                                                            .padding(.trailing, 10)
                                                        
                                                        
                                                        Image("\(game.awayTeamLogo)")
                                                            .resizable()
                                                            .frame(width: 50, height: 50)
                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                            .padding(.trailing,20)
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    Spacer()
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
                                            .frame(width: 370, height: 133)
                                            
                                            
                                            
                                            //LETZTES SPIEL____________________________________________________________________________________________________________________________________________________________________________________________________________________________
                                            
                                            ForEach(gameViewModel2.game, id: \.id) { game in
                                                
                                                ZStack {
                                                    
                                                        VStack(spacing: 20) {
                                                            VStack {
                                                                
                                                                ZStack {
                                                                    HStack{
                                                                        Text("LETZTES SPIEL - 3. LIGA ")
                                                                            .font(.custom("SignPainter", size: 30))
                                                                            .frame(maxWidth: 350, alignment: .trailing)
                                                                            .foregroundColor(.white)
                                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                            .padding(.top, 15)
                                                                  .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                                                        
                                                                        /*
                                                                        Image("liga3neu")
                                                                            .resizable()
                                                                            .frame(width: 80, height: 50)
                                                                            .padding(.top, 15)
                                                                         */
                                                                        
                                                                    }
                                                                }
                                                                
                                                                VStack {
                                                                    Text("\(game.spieltag) - \(game.league) - \(game.day) - \(game.date) - \(game.time)")
                                                                        .font(.custom("SignPainter", size: 15))
                                                                        .frame(maxWidth: 350, alignment: .trailing)
                                                                        .foregroundColor(.white)
                                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                                        .padding(.top, 1)
                                                    .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                                                    
                                                                    
                                                                    HStack {
                                                                        
                                                                        Image("\(game.homeTeamLogo)")
                                                                            .resizable()
                                                                            .frame(width: 50, height: 50)
                                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                            .padding(.leading,20)
                                                                        
                                                                        
                                                                        Text("\(game.homeTeamName)")
                                                                            .font(.custom("SignPainter", size: 12))
                                                                            .foregroundColor(.black)
                                                                            .frame(width: 72.5, alignment: .trailing)
                                                                            .padding(.leading, 10)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        Text(" 2 : 2 ")
                                                                            
                                                                            .font(.custom("SignPainter", size: 25))
                                                                            .frame(width: 60, alignment: .center)
                                                                            .foregroundColor(.white)
                                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                                                            .cornerRadius(5)
                                                                            .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        //AWAYTEAM
                                                                        
                                                                        
                                                                        Text("\(game.awayTeamName)")
                                                                            .font(.custom("SignPainter", size: 12))
                                                                            .foregroundColor(.black)
                                                                            .frame(width: 72.5, alignment: .leading)
                                                                            .padding(.trailing, 10)
                                                                        
                                                                        
                                                            Image("\(game.awayTeamLogo)")
                                                                            .resizable()
                                                                            .frame(width: 45, height: 50)
                                                                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                                                            .padding(.trailing,20)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    Spacer()
                                                                    
                                                                    
                                                                    
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
                                                            .frame(width: 370, height: 133)
                                                            
                                                
                                                            
                                                        }
                                                        Spacer()
                                                        Spacer()
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
                .environmentObject(WetterViewModel())
        }
    }

