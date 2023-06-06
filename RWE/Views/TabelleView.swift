//
//  TabelleView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct TabelleView: View {
    @EnvironmentObject var tabelleViewModel: TabelleViewModel

    //Hintergrundbild
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)

            
            //Obere Leiste der Tabelle
            
            VStack(spacing: 3) {
                
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
                                if tabellenEintrag.platz >= 1 && tabellenEintrag.platz <= 3 {
                                    LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.8), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                        .border(Color.green.opacity(0.7), width: 0)
                                } else if tabellenEintrag.platz >= 17 && tabellenEintrag.platz <= 20 {
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
                                    .font(.custom("SignPainter", size: 21))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .leading, endPoint: .trailing))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.clear, .clear]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                ),
                                                lineWidth: 1
                                            )
                                            .shadow(color: Color.white.opacity(0.0), radius: 0, x: 0, y: 0)
                                    )
                                Spacer()
                                Image("\(tabellenEintrag.logo)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("\(tabellenEintrag.teamName)")
                                    .frame(width: 150, alignment: .leading)
                                    .font(.custom("SignPainter", size: 18))
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .leading, endPoint: .trailing))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.clear, .clear]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                ),
                                                lineWidth: 1
                                            )
                                            .shadow(color: Color.black.opacity(0.0), radius: 0, x: 0, y: 0))
                                   
                                
                                Spacer()
                                Text("\(tabellenEintrag.spiele)")
                                    .font(.custom("SignPainter", size: 18))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .leading, endPoint: .trailing))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.clear, .clear]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                ),
                                                lineWidth: 1
                                            )
                                            .shadow(color: Color.white.opacity(0.0), radius: 0, x: 0, y: 0))
                                Text("\(tabellenEintrag.differenz)")
                                            .font(.custom("SignPainter", size: 18))
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .leading, endPoint: .trailing))
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(
                                                        LinearGradient(
                                                            gradient: Gradient(colors: [.clear, .clear]),
                                                            startPoint: .leading,
                                                            endPoint: .trailing
                                                        ),
                                                        lineWidth: 1
                                                    )
                                                    .shadow(color: Color.white.opacity(0.0), radius: 0, x: 0, y: 0))
                                Text("\(tabellenEintrag.punkte)")
                                                    .font(.custom("SignPainter", size: 18))
                                                    .frame(maxWidth: .infinity, alignment: .center)
                                                    .foregroundColor(.white)
                                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .leading, endPoint: .trailing))
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 0)
                                                            .stroke(
                                                                LinearGradient(
                                                                    gradient: Gradient(colors: [.clear, .clear]),
                                                                    startPoint: .leading,
                                                                    endPoint: .trailing
                                                                ),
                                                                lineWidth: 1
                                                            )
                                                            .shadow(color: Color.white.opacity(0.0), radius: 0, x: 0, y: 0))
                            }
                            .padding(.vertical, 10)
                            .cornerRadius(5)
                            .background(Color.clear)
                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
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
