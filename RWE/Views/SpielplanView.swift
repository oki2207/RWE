//
//  SpielplanView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct SpielplanView: View {
    
    @EnvironmentObject var spielplanViewModel: SpielplanViewModel
    @EnvironmentObject var NrViewModel: NrPokalViewModel
    @State private var showDritteLiga = false
    @State private var showNrPokal = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)
            
            //Obere Leiste der Tabelle
            
            
            VStack(spacing: 5) {
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
                .padding(.vertical, 10)
                
                
                
                
                
                
                //KLICKLEISTE-------------------------------------------------------------------------------
                
                Text("3. LIGA \(showDritteLiga ? "- " : "+ ")")
                    .onTapGesture {
                        showDritteLiga.toggle()
                        
                    }
                    .font(.custom("SignPainter", size: 30))
                    .frame(maxWidth: 350, alignment: .trailing)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .padding(.top, 15)
                    .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                   
                
                //SPIELPLAN 3. LIGA_______________________________________________________________________________
                
                if showDritteLiga {
                    
                    
                    ScrollView {
                        ForEach(spielplanViewModel.spiel, id: \.id) { spiel in
                            VStack {
                                // Obere Zeile mit Spieltag, Datum und Uhrzeit
                                ZStack {
                                    Text("\(spiel.spieltag) - \(spiel.datum) - \(spiel.uhrzeit)")
                                        .font(.custom("SignPainter", size: 20))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                }
                               
                                
                                // Untere Zeile mit Heimlogo, Teamnamen, Ergebnis, Auswärtsteamnamen und Auswärtslogo
                                HStack {
                                    Image("\(spiel.teamLogoHome)")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.system(size: 14))
                                        .padding(.leading, 10)
                                        .shadow(color: Color.black.opacity(1.0), radius: 5, x: 0, y: 2)
                                    Text("\(spiel.teamNameHome)")
                                        .font(.custom("SignPainter", size: 12))
                                        .foregroundColor(.black)
                                        .frame(width: 70, alignment: .trailing)
                                        .padding(.leading, 10)
                                    Text("\(spiel.ergebnis)")
                                        .font(.custom("SignPainter", size: 25))
                                        .frame(width: 60, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .cornerRadius(5)
                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    Text("\(spiel.teamNameAway)")
                                        .font(.custom("SignPainter", size: 12))
                                        .foregroundColor(.black)
                                        .frame(width: 70, alignment: .leading)
                                        .padding(.trailing, 10)
                                    Image("\(spiel.teamLogoAway)")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.system(size: 14))
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
                
                
                //KLICKLEISTE-------------------------------------------------------------------------------
                Text("NIEDERRHEINPOKAL \(showNrPokal ? "- " : "+ ")")
            
                .onTapGesture {
                        showNrPokal.toggle()
                    }
            
            
            
                .font(.custom("SignPainter", size: 30))
                .frame(maxWidth: 350, alignment: .trailing)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                .padding(.top, 15)
                .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                
                //SPIELPLAN 3. LIGA_______________________________________________________________________________
                
                if showNrPokal {
                    ScrollView {
                        ForEach(NrViewModel.spiel, id: \.id) { spiel in
                            VStack {
                                // Obere Zeile mit Spieltag, Datum und Uhrzeit
                                ZStack {
                                    Text("\(spiel.spieltag) - \(spiel.datum) - \(spiel.uhrzeit)")
                                        .font(.custom("SignPainter", size: 20))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                }
                                // .padding(3)
                                
                                // Untere Zeile mit Heimlogo, Teamnamen, Ergebnis, Auswärtsteamnamen und Auswärtslogo
                                HStack {
                                    Image("\(spiel.teamLogoHome)")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.system(size: 14))
                                        .padding(.leading, 10)
                                        .shadow(color: Color.black.opacity(1.0), radius: 5, x: 0, y: 2)
                                    Text("\(spiel.teamNameHome)")
                                        .font(.custom("SignPainter", size: 12))
                                        .foregroundColor(.black)
                                        .frame(width: 70, alignment: .trailing)
                                        .padding(.leading, 10)
                                    Text("\(spiel.ergebnis)")
                                        .font(.custom("SignPainter", size: 25))
                                        .frame(width: 60, alignment: .center)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .cornerRadius(5)
                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    Text("\(spiel.teamNameAway)")
                                        .font(.custom("SignPainter", size: 12))
                                        .foregroundColor(.black)
                                        .frame(width: 70, alignment: .leading)
                                        .padding(.trailing, 10)
                                    Image("\(spiel.teamLogoAway)")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.system(size: 14))
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
                Spacer()
                }
           
                
            }
            
        }
    }

                        
                        
                        
    

                
                
                
                
                
                
                struct SpielplanView_Previews: PreviewProvider {
                    static var previews: some View {
                        SpielplanView()
                            .environmentObject(SpielplanViewModel())
                            .environmentObject(NrPokalViewModel())
                    }
                }
            
