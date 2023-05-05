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
        
        Image("externalimages-2")
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
                    Text("Tore")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                    Text("Punkte")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 14))
                }
                .frame(width: UIScreen.main.bounds.width * 0.9)
                
                ScrollView {
                    ForEach(tabelleViewModel.tabelle, id: \.id) { tabellenEintrag in
                        VStack {
                            Text("\(tabellenEintrag.platz)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 14))
                            Text("\(tabellenEintrag.teamName)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 14))
                            Text("\(tabellenEintrag.spiele)")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 14))
                            Text("\(tabellenEintrag.tore)")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 14))
                            Text("\(tabellenEintrag.punkte)")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 14))
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.9)
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

