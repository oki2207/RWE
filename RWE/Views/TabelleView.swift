//
//  TabelleView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct TabelleView: View {
    @EnvironmentObject var tabelleViewModel: TabelleViewModel
    
    var body: some View {
        ZStack{
            Image("screen3")
                .resizable()
                .scaledToFill()
                .opacity(1.0)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                HStack {
                    Text("Platz")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 14))
                    Text("Team")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 14))
                    Text("Spiele")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                    Text("+/-")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                    Text("Punkte")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                }
                .padding(.vertical, 5)
                .background(Color.white.opacity(0.8))
                .cornerRadius(5)
                .frame(width: UIScreen.main.bounds.width * 0.9)
                
                ScrollView {
                    ForEach(tabelleViewModel.tabelle, id: \.id) { tabellenEintrag in
                        ZStack {
                          //  RoundedRectangle(cornerRadius: 5)
                          //    .fill(
                                    Group {
                                        if tabellenEintrag.platz == 1 || tabellenEintrag.platz == 2 {
                                            Color.green.opacity(0.5)
                                        } else if tabellenEintrag.platz >= 17 && tabellenEintrag.platz <= 20 {
                                            Color.red.opacity(0.5)
                                        } else {
                                            Color.white.opacity(0.5)
                                        }
                                    }
                                
                            HStack {
                                Text("\(tabellenEintrag.platz)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                Image("\(tabellenEintrag.logo)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                Text("\(tabellenEintrag.teamName)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("\(tabellenEintrag.spiele)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Text("\(tabellenEintrag.differenz)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                                Text("\(tabellenEintrag.punkte)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 14))
                            }
                            .padding(.vertical, 5)
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
