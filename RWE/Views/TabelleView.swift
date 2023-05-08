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
            Image("screen3")
                .resizable()
                .scaledToFill()
                .opacity(1.0)
                .edgesIgnoringSafeArea(.all)

            
            //Obere Leiste der Tabelle
            
            VStack(spacing: 3) {
                
                HStack {
                    Text("TABELLE ")
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.red)
                    
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 5)
                        .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
                )
                
                //Farbkombination der Tabelle
                
                ScrollView {
                    ForEach(tabelleViewModel.tabelle, id: \.id) { tabellenEintrag in
                        
                        ZStack {
                            Group {
                                if tabellenEintrag.platz >= 1 && tabellenEintrag.platz <= 3 {
                                    LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.7), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                        .border(Color.green.opacity(0.7), width: 0)
                                } else if tabellenEintrag.platz >= 17 && tabellenEintrag.platz <= 20 {
                                    LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.7), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                        .border(Color.red.opacity(0.7), width: 0)
                                } else {
                                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.7), Color.white.opacity(0.8)]), startPoint: .leading, endPoint: .trailing)
                                }
                            }
                            .cornerRadius(0)
                            .overlay(
                               RoundedRectangle(cornerRadius: 0)
                                  .stroke(
                                     LinearGradient(
                                        gradient: Gradient(colors: [.white, .red]),
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
                                    .font(.custom("SignPainter", size: 16))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.white, .red]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                ),
                                                lineWidth: 1
                                            )
                                            .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2)
                                    )
                                Spacer()
                                Image("\(tabellenEintrag.logo)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("\(tabellenEintrag.teamName)")
                                    .frame(width: 150, alignment: .leading)
                                    .font(.custom("SignPainter", size: 16))
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.white, .red]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                ),
                                                lineWidth: 1
                                            )
                                            .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                Spacer()
                                Text("\(tabellenEintrag.spiele)")
                                    .font(.custom("SignPainter", size: 16))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.white, .red]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                ),
                                                lineWidth: 1
                                            )
                                            .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                Text("\(tabellenEintrag.differenz)")
                                            .font(.custom("SignPainter", size: 16))
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .foregroundColor(.red)
                                            .background(Color.white)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(
                                                        LinearGradient(
                                                            gradient: Gradient(colors: [.white, .red]),
                                                            startPoint: .leading,
                                                            endPoint: .trailing
                                                        ),
                                                        lineWidth: 1
                                                    )
                                                    .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                Text("\(tabellenEintrag.punkte)")
                                                    .font(.custom("SignPainter", size: 16))
                                                    .frame(maxWidth: .infinity, alignment: .center)
                                                    .foregroundColor(.red)
                                                    .background(Color.white)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 0)
                                                            .stroke(
                                                                LinearGradient(
                                                                    gradient: Gradient(colors: [.white, .red]),
                                                                    startPoint: .leading,
                                                                    endPoint: .trailing
                                                                ),
                                                                lineWidth: 1
                                                            )
                                                            .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                            }
                            .padding(.vertical, 10)
                            .cornerRadius(5)
                            .background(Color.clear)
                            .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
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
