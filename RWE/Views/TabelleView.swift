//
//  TabelleView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

//TODO: Annordnung der Logos

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
                    Text("Tabelle 2022/2023")
                        .bold()
                        .frame(width: 100, alignment: .leading)
                        .font(.system(size: 14))
                    Text("  ")
                    Text("3. Liga")
                        .bold()
                        .frame(width: 100, alignment: .leading)
                        .font(.system(size: 14))
                    Text("")
                    Text("Sp.")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                    Text("+/-")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                    Text("Pkt.")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                }
                .padding(.vertical, 5)
                .background(Color.red.opacity(1.0))
                .cornerRadius(0)
                .frame(width: UIScreen.main.bounds.width * 0.9)
                .foregroundColor(.white)
                
                //Farbkombination der Tabelle
                
                ScrollView {
                    ForEach(tabelleViewModel.tabelle, id: \.id) { tabellenEintrag in
                        
                        ZStack {
                            
                                    Group {
                                        if tabellenEintrag.platz >= 1 && tabellenEintrag.platz <= 3 {
                                            Color.white.opacity(0.8)
                                                .border(Color.green.opacity(0.7), width: 4)
                                        } else if tabellenEintrag.platz >= 17 && tabellenEintrag.platz <= 20 {
                                            Color.white.opacity(0.8)
                                                .border(Color.red.opacity(0.7), width: 4)
                                        } else {
                                            Color.white.opacity(0.8)
                                        }
                                    }
                            
                            //Tabelle
                                
                            HStack {
                                Text("\(tabellenEintrag.platz)")
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Spacer()
                                Image("\(tabellenEintrag.logo)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Spacer()
                                Text("\(tabellenEintrag.teamName)")
                                    .frame(width: 150, alignment: .leading)
                                    .font(.system(size: 14
                                                 ))
                                Spacer()
                                Text("\(tabellenEintrag.spiele)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Text("\(tabellenEintrag.differenz)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Text("\(tabellenEintrag.punkte)")
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
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
