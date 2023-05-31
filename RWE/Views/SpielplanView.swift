//
//  SpielplanView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct SpielplanView: View {
    
    @EnvironmentObject var spielplanViewModel: SpielplanViewModel
    
    var body: some View {
        ZStack {
            Image("screen4") // Hier musst du den Namen deines Bildes angeben
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            //Obere Leiste der Tabelle
            
            
            VStack(spacing: 5){
                
                HStack {
                    Text("SPIELPLAN ")
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
                .padding(.horizontal, 20)
                
                
                
                
                
                
                
                
                ScrollView {
                    ForEach(spielplanViewModel.spiel, id: \.id) { spiel in
                        VStack {
                            // Obere Zeile mit Spieltag, Datum und Uhrzeit
                            ZStack {
                                Text("\(spiel.spieltag) - \(spiel.datum) - \(spiel.uhrzeit)")
                                    .font(.custom("SignPainter", size: 24))
                                    .frame(maxWidth: 350, alignment: .trailing)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                    .padding(.top, 15)
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                            }
                           // .padding(3)
                            
                            // Untere Zeile mit Heimlogo, Teamnamen, Ergebnis, Auswärtsteamnamen und Auswärtslogo
                            HStack {
                                Image("\(spiel.teamLogoHome)")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .padding(.leading, 10)
                                    .shadow(color: Color.black.opacity(1.0), radius: 5, x: 0, y: 2)
                                Text("\(spiel.teamNameHome)")
                                    .font(.custom("SignPainter", size: 18))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 10)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                Text("\(spiel.ergebnis)")
                                    .font(.custom("SignPainter", size: 24))
                                    .foregroundColor(.white)
                                    .frame(width: 60)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                Text("\(spiel.teamNameAway)")
                                    .font(.custom("SignPainter", size: 18))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing, 10)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                Image("\(spiel.teamLogoAway)")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .padding(.trailing, 10)
                                    .shadow(color: Color.black.opacity(1.0), radius: 5, x: 0, y: 2)
                            }
                           // .padding(.vertical, 10)
                        }
                        .frame(width: 380)
                        
                        .frame(width: 380, height: 100)
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
                    }
                }
                
            }
            
        }
        
    }
}
                        
                        
                        
    

                
                
                
                
                
                
                struct SpielplanView_Previews: PreviewProvider {
                    static var previews: some View {
                        SpielplanView()
                            .environmentObject(SpielplanViewModel())
                    }
                }
            
