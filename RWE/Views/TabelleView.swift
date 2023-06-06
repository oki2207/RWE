//
//  TabelleView.swift
//  RWE
//
//  Created by Olli on 06.06.23.
//

import SwiftUI

struct TabelleView: View {
    @EnvironmentObject var tabelleViewModel: TabelleViewModel

    //Hintergrundbild
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)

            
            //Obere Leiste der Tabelle
            
            VStack(spacing: 5) {
                
                HStack {
                    Text("TABELLE ")
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
                
                //Farbkombination der Tabelle
                
                ScrollView {
                    ForEach(tabelleViewModel.tabelle, id: \.id) { tabellenEintrag in
                        
                        ZStack {
                            Group {
                                if tabellenEintrag.platz.compare(" 1 ", options: .numeric) == .orderedSame ||
                                   tabellenEintrag.platz.compare("2", options: .numeric) == .orderedSame ||
                                   tabellenEintrag.platz.compare(" 3 ", options: .numeric) == .orderedSame ||
                                    tabellenEintrag.platz.compare(" 4 ", options: .numeric) == .orderedSame{
                                    LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.8), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                        .border(Color.green.opacity(0.7), width: 0)
                                } else if tabellenEintrag.platz.compare(" 17 ", options: .numeric) == .orderedSame ||
                                          tabellenEintrag.platz.compare(" 18 ", options: .numeric) == .orderedSame ||
                                          tabellenEintrag.platz.compare(" 19 ", options: .numeric) == .orderedSame ||
                                          tabellenEintrag.platz.compare(" 20 ", options: .numeric) == .orderedSame {
                                    LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.8), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                        .border(Color.red.opacity(0.7), width: 0)
                                } else {
                                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.8), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                }
                            }
                            .cornerRadius(0)
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
                            .shadow(radius: 0)
                            
                            //Tabelle
                                
                            HStack {
                                Text("\(tabellenEintrag.platz)")
                                    .font(.custom("SignPainter", size: 25))
                                    .frame(width: 30, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .cornerRadius(5)
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    .padding(.leading, 5)
                                
                                Spacer()
                                Image("\(tabellenEintrag.logo)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                    .shadow(color: Color.black.opacity(1.0), radius: 5, x: 3, y: 5)
                                Spacer()
                                Text("\(tabellenEintrag.teamName)")
                                    .frame(width: 150, alignment: .leading)
                                    .font(.custom("SignPainter", size: 18))
                                    .foregroundColor(.black)
                                   
                                
                                Spacer()
                                Text("\(tabellenEintrag.spiele)")
                                    .font(.custom("SignPainter", size: 22))
                                    .frame(width: 30, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .cornerRadius(5)
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                
                                Text("\(tabellenEintrag.differenz)")
                                    .font(.custom("SignPainter", size: 22))
                                    .frame(width: 33, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .cornerRadius(5)
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                
                                Text("\(tabellenEintrag.punkte)")
                                    .font(.custom("SignPainter", size: 22))
                                    .frame(width: 30, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .cornerRadius(5)
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                            }
                            .padding(.vertical, 10)
                            .cornerRadius(5)
                            .background(Color.clear)
                            
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.9)
                    }
                }
                 
            }
             
        }
             
    }
     
}


struct TabelleView_Previews: PreviewProvider {
    static var previews: some View {
        TabelleView()
            .environmentObject(TabelleViewModel())
    }
}
